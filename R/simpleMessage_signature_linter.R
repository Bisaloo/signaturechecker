#' @export
simpleMessage_signature_linter <- lintr::make_linter_from_function_xpath(
  'simpleMessage',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("message", "call"))})]'
  ),
  lint_message = '[signature] invalid signature for simpleMessage'
)
