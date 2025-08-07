#' @export
getNativeSymbolInfo_signature_linter <- lintr::make_linter_from_function_xpath(
  'getNativeSymbolInfo',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("name", "PACKAGE", "unlist", "withRegistrationInfo"))})]
      or count(SYMBOL_SUB) > 4
    ]'
  ),
  lint_message = '[signature] invalid signature for getNativeSymbolInfo'
)
