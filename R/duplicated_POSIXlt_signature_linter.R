#' Check signature of [duplicated.POSIXlt()]
#'
#' @export
duplicated_POSIXlt_signature_linter <- lintr::make_linter_from_function_xpath(
  'duplicated.POSIXlt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "incomparables"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for duplicated.POSIXlt'
)
