#' @export
basename_signature_linter <- lintr::make_linter_from_function_xpath(
  'basename',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("path")})]'
  ),
  lint_message = '[signature] invalid signature for basename'
)
