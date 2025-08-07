#' @export
srcfilecopy_signature_linter <- lintr::make_linter_from_function_xpath(
  'srcfilecopy',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("filename", "lines", "timestamp", "isFile"))})]'
  ),
  lint_message = '[signature] invalid signature for srcfilecopy'
)
