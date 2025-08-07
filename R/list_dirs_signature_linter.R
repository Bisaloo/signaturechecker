#' @export
list_dirs_signature_linter <- lintr::make_linter_from_function_xpath(
  'list.dirs',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "full.names", "recursive"))})]'
  ),
  lint_message = '[signature] invalid signature for list.dirs'
)
