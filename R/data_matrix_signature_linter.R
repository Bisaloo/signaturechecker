#' Check signature of [data.matrix()]
#'
#' @export
data_matrix_signature_linter <- lintr::make_linter_from_function_xpath(
  'data.matrix',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("frame", "rownames.force"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for data.matrix'
)
