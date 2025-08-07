#' @export
getElement_signature_linter <- lintr::make_linter_from_function_xpath(
  'getElement',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "name"))})]'
  ),
  lint_message = '[signature] invalid signature for getElement'
)
