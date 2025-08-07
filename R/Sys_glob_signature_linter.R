#' @export
Sys_glob_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.glob',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("paths", "dirmark"))})]'
  ),
  lint_message = '[signature] invalid signature for Sys.glob'
)
