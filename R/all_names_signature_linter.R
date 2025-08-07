#' @export
all_names_signature_linter <- lintr::make_linter_from_function_xpath(
  'all.names',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "functions", "max.names", "unique"))})]
      or count(SYMBOL_SUB) > 4
    ]'
  ),
  lint_message = '[signature] invalid signature for all.names'
)
