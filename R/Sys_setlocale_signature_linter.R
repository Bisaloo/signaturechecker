#' @export
Sys_setlocale_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.setlocale',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("category", "locale"))})]'
  ),
  lint_message = '[signature] invalid signature for Sys.setlocale'
)
