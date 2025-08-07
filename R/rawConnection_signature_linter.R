#' @export
rawConnection_signature_linter <- lintr::make_linter_from_function_xpath(
  'rawConnection',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "open"))})]'
  ),
  lint_message = '[signature] invalid signature for rawConnection'
)
