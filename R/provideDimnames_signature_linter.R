#' @export
provideDimnames_signature_linter <- lintr::make_linter_from_function_xpath(
  'provideDimnames',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "sep", "base", "unique"))})]'
  ),
  lint_message = '[signature] invalid signature for provideDimnames'
)
