#' @export
qr_Q_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.Q',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "complete", "Dvec"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for qr.Q'
)
