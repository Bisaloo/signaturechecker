#' Check signature of [as.matrix.noquote()]
#'
#' @export
as_matrix_noquote_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.matrix.noquote',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.matrix.noquote'
)
