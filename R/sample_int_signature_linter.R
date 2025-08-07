#' @export
sample_int_signature_linter <- lintr::make_linter_from_function_xpath(
  'sample.int',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "size", "replace", "prob", "useHash"))})]'
  ),
  lint_message = '[signature] invalid signature for sample.int'
)
