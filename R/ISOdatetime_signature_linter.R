#' @export
ISOdatetime_signature_linter <- lintr::make_linter_from_function_xpath(
  'ISOdatetime',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("year", "month", "day", "hour", "min", "sec", "tz"))})]'
  ),
  lint_message = '[signature] invalid signature for ISOdatetime'
)
