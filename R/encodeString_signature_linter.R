#' @export
encodeString_signature_linter <- lintr::make_linter_from_function_xpath(
  'encodeString',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "width", "quote", "na.encode", "justify"))})]
      or count(SYMBOL_SUB) > 5
    ]'
  ),
  lint_message = '[signature] invalid signature for encodeString'
)
