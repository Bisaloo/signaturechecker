#' @export
isBaseNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'isBaseNamespace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("ns")})]'
  ),
  lint_message = '[signature] invalid signature for isBaseNamespace'
)
