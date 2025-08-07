source(here::here("tools", "create_fct_signature_linter.R"))

base_fcts <- grepv("^[[:alpha:]_.]*$", ls(.BaseNamespaceEnv))
base_fcts <- setdiff(
  base_fcts,
  # symbols
  c("F", "T", "last.warning", "letters", "LETTERS", "month.abb", "month.name", "pi", "R.version", "R.version.string", "version")
)
base_fcts <- setdiff(
  base_fcts,
  c("library", "library.dynam") # FIXME: why doesn't this work?
)
base_fcts <- setdiff(
  base_fcts,
  "Negate" # uses f for an arbitrary function arg
)

has_linter <- logical(length(base_fcts))

formals_env <- new.env()

for (i in seq_along(base_fcts)) {
  fct_name <- base_fcts[i]
  fct <- rlang::as_function(fct_name)
  has_linter[i] <- create_fct_signature_linter(fct, fct_name, formals_env)
}

write.csv(
  data.frame(
    linter = glue::glue("{gsub('.', '_', base_fcts[has_linter], fixed = TRUE)}_signature_linter"),
    tags = "signature"
  ),
  system.file("lintr", "linters.csv", package = "signaturechecker"),
  row.names = FALSE
)

