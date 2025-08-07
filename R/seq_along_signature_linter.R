#' Check signature of [seq_along()]
#'
#' @export
seq_along_signature_linter <- lintr::make_linter_from_function_xpath(
  'seq_along',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("along.with")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for seq_along'
)
