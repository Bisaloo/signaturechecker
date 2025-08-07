#' Check signature of [stopifnot()]
#'
#' @export
stopifnot_signature_linter <- lintr::make_linter_from_function_xpath(
  'stopifnot',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("exprs", "exprObject", "local"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for stopifnot'
)
