#' Check signature of [kronecker()]
#'
#' @export
kronecker_signature_linter <- lintr::make_linter_from_function_xpath(
  'kronecker',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("X", "Y", "FUN", "make.dimnames"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for kronecker'
)
