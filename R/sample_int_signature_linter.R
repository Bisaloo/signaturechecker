#' @export
sample_int_signature_linter <- lintr::make_linter_from_function_xpath(
  'sample.int',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "size", "replace", "prob", "useHash"))})]
      or count(SYMBOL_SUB) > 5
    ]'
  ),
  lint_message = '[signature] invalid signature for sample.int'
)
