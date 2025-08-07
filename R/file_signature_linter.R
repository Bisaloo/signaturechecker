#' @export
file_signature_linter <- lintr::make_linter_from_function_xpath(
  'file',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("description", "open", "blocking", "encoding", "raw", "method"))})]'
  ),
  lint_message = '[signature] invalid signature for file'
)
