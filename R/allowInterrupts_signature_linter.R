#' @export
allowInterrupts_signature_linter <- lintr::make_linter_from_function_xpath(
  'allowInterrupts',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("expr")})]'
  ),
  lint_message = '[signature] invalid signature for allowInterrupts'
)
