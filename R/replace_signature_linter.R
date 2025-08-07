#' @export
replace_signature_linter <- lintr::make_linter_from_function_xpath(
  'replace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "list", "values"))})]'
  ),
  lint_message = '[signature] invalid signature for replace'
)
