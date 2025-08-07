#' Check signature of [as.data.frame.character()]
#'
#' @export
as_data_frame_character_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.data.frame.character',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "stringsAsFactors", "row.names", "optional", "nm"))})]
        or count(SYMBOL_SUB) > 5
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.data.frame.character'
)
