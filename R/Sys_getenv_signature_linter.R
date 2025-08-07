#' @export
Sys_getenv_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.getenv',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "unset", "names"))})]'
  ),
  lint_message = '[signature] invalid signature for Sys.getenv'
)
