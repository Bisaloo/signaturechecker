#' @export
dQuote_signature_linter <- lintr::make_linter_from_function_xpath(
  'dQuote',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "q"))})]
      or count(SYMBOL_SUB) > 2
    ]'
  ),
  lint_message = '[signature] invalid signature for dQuote'
)
