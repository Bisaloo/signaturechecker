#' Check signature of [as.data.frame.table()]
#'
#' @export
as_data_frame_table_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.table',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "row.names", "responseName", "stringsAsFactors", "sep", "base"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.table'
)
