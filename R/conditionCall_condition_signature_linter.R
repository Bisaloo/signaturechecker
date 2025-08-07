#' Check signature of [conditionCall.condition()]
#'
#' @export
conditionCall_condition_signature_linter <- lintr::make_linter_from_function_xpath(
  'conditionCall.condition',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("c")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for conditionCall.condition'
)
