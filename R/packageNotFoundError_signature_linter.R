#' @export
packageNotFoundError_signature_linter <- lintr::make_linter_from_function_xpath(
  'packageNotFoundError',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "lib.loc", "call"))})]'
  ),
  lint_message = '[signature] invalid signature for packageNotFoundError'
)
