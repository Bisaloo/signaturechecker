#' @export
namespaceImportClasses_signature_linter <- lintr::make_linter_from_function_xpath(
  'namespaceImportClasses',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("self", "ns", "vars", "from"))})]'
  ),
  lint_message = '[signature] invalid signature for namespaceImportClasses'
)
