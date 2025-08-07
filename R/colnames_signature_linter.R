#' @export
colnames_signature_linter <- lintr::make_linter_from_function_xpath(
  'colnames',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "do.NULL", "prefix"))})]'
  ),
  lint_message = '[signature] invalid signature for colnames'
)
