#' @export
unsplit_signature_linter <- lintr::make_linter_from_function_xpath(
  'unsplit',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("value", "f", "drop"))})]'
  ),
  lint_message = '[signature] invalid signature for unsplit'
)
