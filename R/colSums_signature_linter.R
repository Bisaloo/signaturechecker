#' @export
colSums_signature_linter <- lintr::make_linter_from_function_xpath(
  'colSums',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "na.rm", "dims"))})]'
  ),
  lint_message = '[signature] invalid signature for colSums'
)
