#' @export
sample_signature_linter <- lintr::make_linter_from_function_xpath(
  'sample',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "size", "replace", "prob"))})]'
  ),
  lint_message = '[signature] invalid signature for sample'
)
