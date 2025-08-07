#' Check signature of [Reduce()]
#'
#' @export
Reduce_signature_linter <- lintr::make_linter_from_function_xpath(
  'Reduce',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "x", "init", "right", "accumulate", "simplify"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Reduce'
)
