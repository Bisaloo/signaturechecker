create_fct_signature_linter <- function(fct, fct_name = deparse(substitute(fct))) {

  # As per ?formals, the `args()` intermediate step is required for
  formals <- methods::formalArgs(args(fct))

  if ("..." %in% formals) {
    # Get
    formals <- setdiff(formals, "...")
    return(invisible(FALSE))
  }

  if (length(formals) == 0) {
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