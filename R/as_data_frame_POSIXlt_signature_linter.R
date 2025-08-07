#' Check signature of [as.data.frame.POSIXlt()]
#'
#' @export
as_data_frame_POSIXlt_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.POSIXlt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "row.names", "optional", "nm"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.POSIXlt'
)
