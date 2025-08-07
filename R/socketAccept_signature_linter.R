#' @export
socketAccept_signature_linter <- lintr::make_linter_from_function_xpath(
  'socketAccept',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("socket", "blocking", "open", "encoding", "timeout", "options"))})]'
  ),
  lint_message = '[signature] invalid signature for socketAccept'
)
