#' Check signature of [bitwAnd()]
#'
#' @export
bitwAnd_signature_linter <- lintr::make_linter_from_function_xpath(
  'bitwAnd',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("a", "b"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for bitwAnd'
)
