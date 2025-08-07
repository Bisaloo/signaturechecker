#' Check signature of [as.data.frame.data.frame()]
#'
#' @export
as_data_frame_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.data.frame',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "row.names"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.data.frame'
)
