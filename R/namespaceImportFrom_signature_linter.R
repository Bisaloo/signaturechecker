#' @export
namespaceImportFrom_signature_linter <- lintr::make_linter_from_function_xpath(
  'namespaceImportFrom',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("self", "ns", "vars", "generics", "packages", "from", "except"))})]'
  ),
  lint_message = '[signature] invalid signature for namespaceImportFrom'
)
