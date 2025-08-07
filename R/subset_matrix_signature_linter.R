#' Check signature of [subset.matrix()]
#'
#' @export
subset_matrix_signature_linter <- lintr::make_linter_from_function_xpath(
  'subset.matrix',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "subset", "select", "drop"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for subset.matrix'
)
