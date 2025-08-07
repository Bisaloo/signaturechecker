#' @export
socketConnection_signature_linter <- lintr::make_linter_from_function_xpath(
  'socketConnection',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("host", "port", "server", "blocking", "open", "encoding", "timeout", "options"))})]
      or count(SYMBOL_SUB) > 8
    ]'
  ),
  lint_message = '[signature] invalid signature for socketConnection'
)
