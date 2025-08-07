#' @export
package_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'package_version',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "strict"))})]'
  ),
  lint_message = '[signature] invalid signature for package_version'
)
