#' @export
textConnection_signature_linter <- lintr::make_linter_from_function_xpath(
  'textConnection',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "open", "local", "name", "encoding"))})]'
  ),
  lint_message = '[signature] invalid signature for textConnection'
)
