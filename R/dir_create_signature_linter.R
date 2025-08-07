#' @export
dir_create_signature_linter <- lintr::make_linter_from_function_xpath(
  'dir.create',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "showWarnings", "recursive", "mode"))})]'
  ),
  lint_message = '[signature] invalid signature for dir.create'
)
