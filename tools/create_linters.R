source(here::here("tools", "create_fct_signature_linter.R"))

base_fcts <- grepv("^[[:alpha:]_.]*$", ls(.BaseNamespaceEnv))
base_fcts <- setdiff(
  base_fcts,
  c("F", "T", "last.warning", "letters", "LETTERS", "month.abb", "month.name", "pi", "R.version", "R.version.string", "version")
)

has_linter <- logical(length(base_fcts))
for (i in seq_along(base_fcts)) {
  fct_name <- base_fcts[i]
  fct <- rlang::as_function(fct_name)
  has_linter[i] <- create_fct_signature_linter(fct, fct_name)
}

write.csv(
  data.frame(
    linter = glue::glue("{gsub('.', '_', base_fcts[has_linter], fixed = TRUE)}_signature_linter"),
    tags = "signature"
  ),
  system.file("lintr", "linters.csv", package = "signaturechecker"),
  row.names = FALSE
)

