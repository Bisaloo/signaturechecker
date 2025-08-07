#' @export
path_package_signature_linter <- lintr::make_linter_from_function_xpath(
  'path.package',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "quiet"))})]'
  ),
  lint_message = '[signature] invalid signature for path.package'
)
