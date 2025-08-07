#' @export
is_package_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.package_version',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]'
  ),
  lint_message = '[signature] invalid signature for is.package_version'
)
