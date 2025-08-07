#' Check signature of [rep.int()]
#'
#' @export
rep_int_signature_linter <- lintr::make_linter_from_function_xpath(
  'rep.int',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "times"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for rep.int'
)
