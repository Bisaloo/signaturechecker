#' @export
numeric_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'numeric_version',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "strict"))})]'
  ),
  lint_message = '[signature] invalid signature for numeric_version'
)
