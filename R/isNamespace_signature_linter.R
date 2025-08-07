#' @export
isNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'isNamespace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("ns")})]'
  ),
  lint_message = '[signature] invalid signature for isNamespace'
)
