#' @export
Position_signature_linter <- lintr::make_linter_from_function_xpath(
  'Position',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "x", "right", "nomatch"))})]'
  ),
  lint_message = '[signature] invalid signature for Position'
)
