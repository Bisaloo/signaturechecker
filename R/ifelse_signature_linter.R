#' @export
ifelse_signature_linter <- lintr::make_linter_from_function_xpath(
  'ifelse',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("test", "yes", "no"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for ifelse'
)
