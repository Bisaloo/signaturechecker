#' @export
zapsmall_signature_linter <- lintr::make_linter_from_function_xpath(
  'zapsmall',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "digits", "mFUN", "min.d"))})]
      or count(SYMBOL_SUB) > 4
    ]'
  ),
  lint_message = '[signature] invalid signature for zapsmall'
)
