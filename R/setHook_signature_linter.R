#' @export
setHook_signature_linter <- lintr::make_linter_from_function_xpath(
  'setHook',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("hookName", "value", "action"))})]'
  ),
  lint_message = '[signature] invalid signature for setHook'
)
