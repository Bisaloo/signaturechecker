#' @export
debug_signature_linter <- lintr::make_linter_from_function_xpath(
  'debug',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("fun", "text", "condition", "signature"))})]
      or count(SYMBOL_SUB) > 4
    ]'
  ),
  lint_message = '[signature] invalid signature for debug'
)
