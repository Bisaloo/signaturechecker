#' @export
conflictRules_signature_linter <- lintr::make_linter_from_function_xpath(
  'conflictRules',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pkg", "mask.ok", "exclude"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for conflictRules'
)
