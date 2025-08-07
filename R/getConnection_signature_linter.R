#' @export
getConnection_signature_linter <- lintr::make_linter_from_function_xpath(
  'getConnection',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("what")})]'
  ),
  lint_message = '[signature] invalid signature for getConnection'
)
