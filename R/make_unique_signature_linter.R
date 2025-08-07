#' @export
make_unique_signature_linter <- lintr::make_linter_from_function_xpath(
  'make.unique',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("names", "sep"))})]'
  ),
  lint_message = '[signature] invalid signature for make.unique'
)
