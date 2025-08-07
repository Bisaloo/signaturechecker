#' Check signature of [all.equal.formula()]
#'
#' @export
all_equal_formula_signature_linter <- lintr::make_linter_from_function_xpath(
  'all.equal.formula',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("target", "current"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for all.equal.formula'
)
