#' @export
findPackageEnv_signature_linter <- lintr::make_linter_from_function_xpath(
  'findPackageEnv',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("info")})]'
  ),
  lint_message = '[signature] invalid signature for findPackageEnv'
)
