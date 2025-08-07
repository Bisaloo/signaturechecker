#' @export
find_package_signature_linter <- lintr::make_linter_from_function_xpath(
  'find.package',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "lib.loc", "quiet", "verbose"))})]'
  ),
  lint_message = '[signature] invalid signature for find.package'
)
