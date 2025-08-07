#' @export
Ops_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'Ops.Date',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("e1", "e2"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Ops.Date'
)
