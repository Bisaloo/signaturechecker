#' @export
clearPushBack_signature_linter <- lintr::make_linter_from_function_xpath(
  'clearPushBack',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("connection")})]'
  ),
  lint_message = '[signature] invalid signature for clearPushBack'
)
