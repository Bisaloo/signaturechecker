#' @export
qr_resid_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.resid',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "y"))})]
      or count(SYMBOL_SUB) > 2
    ]'
  ),
  lint_message = '[signature] invalid signature for qr.resid'
)
