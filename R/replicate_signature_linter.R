#' Check signature of [replicate()]
#'
#' @export
replicate_signature_linter <- lintr::make_linter_from_function_xpath(
  'replicate',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "expr", "simplify"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for replicate'
)
