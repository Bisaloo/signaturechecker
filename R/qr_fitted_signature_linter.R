#' @export
qr_fitted_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.fitted',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "y", "k"))})]
      or count(SYMBOL_SUB) > 3
    ]'
  ),
  lint_message = '[signature] invalid signature for qr.fitted'
)
