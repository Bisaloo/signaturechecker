#' @export
difftime_signature_linter <- lintr::make_linter_from_function_xpath(
  'difftime',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("time1", "time2", "tz", "units"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for difftime'
)
