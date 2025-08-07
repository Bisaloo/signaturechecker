#' Check signature of [as.data.frame.array()]
#'
#' @export
as_data_frame_array_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.array',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "row.names", "optional", "nm", "make.names", "stringsAsFactors"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.array'
)
