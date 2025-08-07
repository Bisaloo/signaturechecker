#' @export
getNamespaceInfo_signature_linter <- lintr::make_linter_from_function_xpath(
  'getNamespaceInfo',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("ns", "which"))})]'
  ),
  lint_message = '[signature] invalid signature for getNamespaceInfo'
)
