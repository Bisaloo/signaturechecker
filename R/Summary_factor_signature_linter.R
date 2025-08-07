#' Check signature of [Summary.factor()]
#'
#' @export
Summary_factor_signature_linter <- lintr::make_linter_from_function_xpath(
  'Summary.factor',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("na.rm")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Summary.factor'
)
