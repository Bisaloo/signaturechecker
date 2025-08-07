#' @export
Sys_setFileTime_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.setFileTime',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "time"))})]'
  ),
  lint_message = '[signature] invalid signature for Sys.setFileTime'
)
