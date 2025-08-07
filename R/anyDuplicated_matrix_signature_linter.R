#' Check signature of [anyDuplicated.matrix()]
#'
#' @export
anyDuplicated_matrix_signature_linter <- lintr::make_linter_from_function_xpath(
  'anyDuplicated.matrix',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "incomparables", "MARGIN", "fromLast"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for anyDuplicated.matrix'
)
