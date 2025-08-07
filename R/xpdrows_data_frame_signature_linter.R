#' @export
xpdrows_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'xpdrows.data.frame',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "old.rows", "new.rows"))})]'
  ),
  lint_message = '[signature] invalid signature for xpdrows.data.frame'
)
