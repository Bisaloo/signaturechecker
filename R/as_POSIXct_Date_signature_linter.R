#' Check signature of [as.POSIXct.Date()]
#'
#' @export
as_POSIXct_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.POSIXct.Date',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "tz"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.POSIXct.Date'
)
