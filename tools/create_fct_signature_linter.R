create_fct_signature_linter <- function(
  fct,
  fct_name = deparse(substitute(fct)),
  formals_env = new.env()
) {

  formals_env[["formals"]] <- NULL
  formals_env[["depth"]] <- 0
  success <- get_recursive_formals(fct)

  if (!success) {
    return(invisible(FALSE))
  }

  frmls <- setdiff(unique(formals_env[["formals"]]), "...")

  if (length(frmls) == 0) {
    return(invisible(FALSE))
  }

  template <- paste(readLines(
    system.file(
      "fct_signature_linter_template.txt",
      package = "signaturechecker"
    )),
    collapse = "\n"
  )

  linter <- glue::glue(
    template,
    .open = "{{", .close = "}}"
  )

  writeLines(
    linter,
    glue::glue("R/{gsub('.', '_', fct_name, fixed = TRUE)}_signature_linter.R")
  )

  invisible(TRUE)
}

get_recursive_formals <- function(fct) {
  # As per ?formals, the `args()` intermediate step is required for primitives
  formals_env[["formals"]] <<- c(formals_env[["formals"]], methods::formalArgs(args(fct)))
  formals_env[["depth"]] <<- formals_env[["depth"]] + 1
  if (formals_env[["depth"]] > 20) {
    return(FALSE)
  }

  # FIXME: There is surely a better way to parse from the installed sources,
  # rather than resaving the file, but I can't figure it out now
  tmp <- tempfile(fileext = ".R")

  def <- body(fct)

  if (is.null(def) || any(grepl("UseMethod", def))) {
    # We have encountered a Primitive. All hope is lost. Flush formals and abort.
    formals_env[["formals"]] <- NULL
    return(FALSE)
  }

  writeLines(
    format(body(fct)),
    tmp,
    sep = "\n"
  )

  parsed_body <- parse(tmp) |>
    xmlparsedata::xml_parse_data(pretty = TRUE) |>
    xml2::as_xml_document()

  hidden_ellipsis_fcts <- xml2::xml_find_first(
    parsed_body,
    "SYMBOL_FUNCTION_CALL[text() = '...length' or text() = '...names()']"
  )
  if (length(hidden_ellipsis_fcts) > 0) {
    formals_env[["formals"]] <- NULL
    return(FALSE)
  }

  next_fct_calls <- parsed_body |>
    xml2::xml_find_all(
      "//SYMBOL[text() = '...']
        /parent::expr
        /parent::expr
        /expr[1]
        /SYMBOL_FUNCTION_CALL
      "
    )

  internal_calls <- xml2::xml_find_first(
    next_fct_calls,
    "//SYMBOL_FUNCTION_CALL[text() = '.Internal']"
  )

  if (any(!is.na(internal_calls))) {
    # This might be overkill. If the function calling Internal() doesn't have
    # ..., we may still be able to extract args
    formals_env[["formals"]] <- NULL
    return(FALSE)
  }

  next_fcts <- next_fct_calls |>
    xml2::xml_text() |>
    unique()

  if ("FUN" %in% next_fcts) {
    # Conventionally, FUN is a user-defined function
    formals_env[["formals"]] <- NULL
    return(FALSE)
  }

  success <- purrr::map_lgl(next_fcts, get_recursive_formals)

  return(all(success))
}
