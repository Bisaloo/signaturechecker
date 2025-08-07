#' @export
file_append_signature_linter <- lintr::make_linter_from_function_xpath(
  'file.append',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file1", "file2"))})]'
  ),
  lint_message = '[signature] invalid signature for file.append'
)
