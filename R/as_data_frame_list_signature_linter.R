#' Check signature of [as.data.frame.list()]
#'
#' @export
as_data_frame_list_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.list',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "row.names", "optional", "cut.names", "col.names", "fix.empty.names", "new.names", "check.names", "stringsAsFactors"))})]
        or count(SYMBOL_SUB) > 9
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.list'
)
