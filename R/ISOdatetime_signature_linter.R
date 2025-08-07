#' @export
ISOdatetime_signature_linter <- lintr::make_linter_from_function_xpath(
  'ISOdatetime',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("year", "month", "day", "hour", "min", "sec", "tz"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for ISOdatetime'
)
