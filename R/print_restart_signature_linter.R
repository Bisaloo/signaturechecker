#' Check signature of [print.restart()]
#'
#' @export
print_restart_signature_linter <- lintr::make_linter_from_function_xpath(
  'print.restart',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for print.restart'
)
