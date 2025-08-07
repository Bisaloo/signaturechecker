#' @export
agrepl_signature_linter <- lintr::make_linter_from_function_xpath(
  'agrepl',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "x", "max.distance", "costs", "ignore.case", "fixed", "useBytes"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for agrepl'
)
