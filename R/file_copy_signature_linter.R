#' @export
file_copy_signature_linter <- lintr::make_linter_from_function_xpath(
  'file.copy',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "to", "overwrite", "recursive", "copy.mode", "copy.date"))})]'
  ),
  lint_message = '[signature] invalid signature for file.copy'
)
