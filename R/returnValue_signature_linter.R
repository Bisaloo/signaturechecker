#' @export
returnValue_signature_linter <- lintr::make_linter_from_function_xpath(
  'returnValue',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("default")})]'
  ),
  lint_message = '[signature] invalid signature for returnValue'
)
