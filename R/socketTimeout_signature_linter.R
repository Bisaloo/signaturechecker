#' @export
socketTimeout_signature_linter <- lintr::make_linter_from_function_xpath(
  'socketTimeout',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("socket", "timeout"))})]'
  ),
  lint_message = '[signature] invalid signature for socketTimeout'
)
