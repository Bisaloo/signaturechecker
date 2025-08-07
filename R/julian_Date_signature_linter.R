#' Check signature of [julian.Date()]
#'
#' @export
julian_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'julian.Date',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "origin"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for julian.Date'
)
