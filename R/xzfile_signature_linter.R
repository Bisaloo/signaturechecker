#' @export
xzfile_signature_linter <- lintr::make_linter_from_function_xpath(
  'xzfile',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("description", "open", "encoding", "compression"))})]'
  ),
  lint_message = '[signature] invalid signature for xzfile'
)
