#' @export
inherits_signature_linter <- lintr::make_linter_from_function_xpath(
  'inherits',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "what", "which"))})]'
  ),
  lint_message = '[signature] invalid signature for inherits'
)
