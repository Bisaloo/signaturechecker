#' @export
conditionMessage_signature_linter <- lintr::make_linter_from_function_xpath(
  'conditionMessage',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("c")})]'
  ),
  lint_message = '[signature] invalid signature for conditionMessage'
)
