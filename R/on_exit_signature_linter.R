#' @export
on_exit_signature_linter <- lintr::make_linter_from_function_xpath(
  'on.exit',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "add", "after"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for on.exit'
)
