#' @export
Sys_setLanguage_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.setLanguage',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("lang", "unset"))})]'
  ),
  lint_message = '[signature] invalid signature for Sys.setLanguage'
)
