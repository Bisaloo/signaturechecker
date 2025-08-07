#' @export
Find_signature_linter <- lintr::make_linter_from_function_xpath(
  'Find',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "x", "right", "nomatch"))})]
      or count(SYMBOL_SUB) > 4
    ]'
  ),
  lint_message = '[signature] invalid signature for Find'
)
