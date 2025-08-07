#' Check signature of [sort.POSIXlt()]
#'
#' @export
sort_POSIXlt_signature_linter <- lintr::make_linter_from_function_xpath(
  'sort.POSIXlt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "decreasing", "na.last"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for sort.POSIXlt'
)
