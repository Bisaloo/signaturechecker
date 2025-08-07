#' @export
as_difftime_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.difftime',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("tim", "format", "units", "tz"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.difftime'
)
