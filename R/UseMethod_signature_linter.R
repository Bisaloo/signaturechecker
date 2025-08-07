#' @export
UseMethod_signature_linter <- lintr::make_linter_from_function_xpath(
  'UseMethod',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("generic", "object"))})]'
  ),
  lint_message = '[signature] invalid signature for UseMethod'
)
