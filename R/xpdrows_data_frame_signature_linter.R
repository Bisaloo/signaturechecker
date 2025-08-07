#' @export
xpdrows_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'xpdrows.data.frame',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "old.rows", "new.rows"))})]
      or count(SYMBOL_SUB) > 3
    ]'
  ),
  lint_message = '[signature] invalid signature for xpdrows.data.frame'
)
