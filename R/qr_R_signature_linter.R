#' Check signature of [qr.R()]
#'
#' @export
qr_R_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.R',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "complete"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for qr.R'
)
