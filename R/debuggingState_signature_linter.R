#' @export
debuggingState_signature_linter <- lintr::make_linter_from_function_xpath(
  'debuggingState',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("on")})]'
  ),
  lint_message = '[signature] invalid signature for debuggingState'
)
