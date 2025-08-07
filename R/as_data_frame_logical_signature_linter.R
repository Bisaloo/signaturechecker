#' Check signature of [as.data.frame.logical()]
#'
#' @export
as_data_frame_logical_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.logical',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "row.names", "optional", "nm"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.logical'
)
