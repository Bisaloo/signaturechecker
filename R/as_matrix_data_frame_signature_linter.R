#' Check signature of [as.matrix.data.frame()]
#'
#' @export
as_matrix_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.matrix.data.frame',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "rownames.force"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.matrix.data.frame'
)
