#' @export
char_expand_signature_linter <- lintr::make_linter_from_function_xpath(
  'char.expand',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("input", "target", "nomatch"))})]'
  ),
  lint_message = '[signature] invalid signature for char.expand'
)
