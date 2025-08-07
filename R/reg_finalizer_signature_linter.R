#' @export
reg_finalizer_signature_linter <- lintr::make_linter_from_function_xpath(
  'reg.finalizer',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("e", "f", "onexit"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for reg.finalizer'
)
