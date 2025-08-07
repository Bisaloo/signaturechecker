#' @export
rowMeans_signature_linter <- lintr::make_linter_from_function_xpath(
  'rowMeans',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "na.rm", "dims"))})]'
  ),
  lint_message = '[signature] invalid signature for rowMeans'
)
