#' @export
serverSocket_signature_linter <- lintr::make_linter_from_function_xpath(
  'serverSocket',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("port")})]'
  ),
  lint_message = '[signature] invalid signature for serverSocket'
)
