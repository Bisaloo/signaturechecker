#' Check signature of [as.double.difftime()]
#'
#' @export
as_double_difftime_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.double.difftime',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "units"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.double.difftime'
)
