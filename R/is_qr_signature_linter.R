#' Check signature of [is.qr()]
#'
#' @export
is_qr_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.qr',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for is.qr'
)
