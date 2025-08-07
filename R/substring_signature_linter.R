#' @export
substring_signature_linter <- lintr::make_linter_from_function_xpath(
  'substring',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("text", "first", "last"))})]'
  ),
  lint_message = '[signature] invalid signature for substring'
)
