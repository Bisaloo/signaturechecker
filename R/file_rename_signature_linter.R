#' @export
file_rename_signature_linter <- lintr::make_linter_from_function_xpath(
  'file.rename',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "to"))})]'
  ),
  lint_message = '[signature] invalid signature for file.rename'
)
