#' @export
formatDL_signature_linter <- lintr::make_linter_from_function_xpath(
  'formatDL',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "y", "style", "width", "indent"))})]'
  ),
  lint_message = '[signature] invalid signature for formatDL'
)
