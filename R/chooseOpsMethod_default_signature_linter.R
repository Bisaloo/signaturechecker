#' Check signature of [chooseOpsMethod.default()]
#'
#' @export
chooseOpsMethod_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'chooseOpsMethod.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "y", "mx", "my", "cl", "reverse"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for chooseOpsMethod.default'
)
