#' Check signature of [as.double.POSIXlt()]
#'
#' @export
as_double_POSIXlt_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.double.POSIXlt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.double.POSIXlt'
)
