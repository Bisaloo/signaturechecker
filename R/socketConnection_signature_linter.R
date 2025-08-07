#' @export
socketConnection_signature_linter <- lintr::make_linter_from_function_xpath(
  'socketConnection',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("host", "port", "server", "blocking", "open", "encoding", "timeout", "options"))})]'
  ),
  lint_message = '[signature] invalid signature for socketConnection'
)
