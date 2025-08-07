#' @export
make_names_signature_linter <- lintr::make_linter_from_function_xpath(
  'make.names',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("names", "unique", "allow_"))})]'
  ),
  lint_message = '[signature] invalid signature for make.names'
)
