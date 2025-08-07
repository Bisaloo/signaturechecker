#' @export
srcfile_signature_linter <- lintr::make_linter_from_function_xpath(
  'srcfile',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("filename", "encoding", "Enc"))})]'
  ),
  lint_message = '[signature] invalid signature for srcfile'
)
