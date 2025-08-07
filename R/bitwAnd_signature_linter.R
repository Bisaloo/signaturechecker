#' @export
bitwAnd_signature_linter <- lintr::make_linter_from_function_xpath(
  'bitwAnd',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("a", "b"))})]'
  ),
  lint_message = '[signature] invalid signature for bitwAnd'
)
