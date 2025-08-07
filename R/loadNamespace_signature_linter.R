#' @export
loadNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'loadNamespace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "lib.loc", "keep.source", "partial", "versionCheck", "keep.parse.data"))})]'
  ),
  lint_message = '[signature] invalid signature for loadNamespace'
)
