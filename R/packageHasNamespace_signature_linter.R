#' @export
packageHasNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'packageHasNamespace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "package.lib"))})]'
  ),
  lint_message = '[signature] invalid signature for packageHasNamespace'
)
