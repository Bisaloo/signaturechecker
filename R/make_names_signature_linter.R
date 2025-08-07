#' @export
make_names_signature_linter <- lintr::make_linter_from_function_xpath(
  'make.names',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("names", "unique", "allow_"))})]
      or count(SYMBOL_SUB) > 3
    ]'
  ),
  lint_message = '[signature] invalid signature for make.names'
)
