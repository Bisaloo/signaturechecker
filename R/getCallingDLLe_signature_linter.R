#' @export
getCallingDLLe_signature_linter <- lintr::make_linter_from_function_xpath(
  'getCallingDLLe',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("e")})]'
  ),
  lint_message = '[signature] invalid signature for getCallingDLLe'
)
