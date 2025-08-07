#' Check signature of [try()]
#'
#' @export
try_signature_linter <- lintr::make_linter_from_function_xpath(
  'try',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "silent", "outFile"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for try'
)
