#' Check signature of [qr.X()]
#'
#' @export
qr_X_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.X',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "complete", "ncol"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for qr.X'
)
