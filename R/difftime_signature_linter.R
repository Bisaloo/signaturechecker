#' @export
difftime_signature_linter <- lintr::make_linter_from_function_xpath(
  'difftime',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("time1", "time2", "tz", "units"))})]'
  ),
  lint_message = '[signature] invalid signature for difftime'
)
