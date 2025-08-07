#' Check signature of [as.logical.factor()]
#'
#' @export
as_logical_factor_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.logical.factor',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.logical.factor'
)
