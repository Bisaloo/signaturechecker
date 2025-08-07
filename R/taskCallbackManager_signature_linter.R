#' @export
taskCallbackManager_signature_linter <- lintr::make_linter_from_function_xpath(
  'taskCallbackManager',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("handlers", "registered", "verbose"))})]'
  ),
  lint_message = '[signature] invalid signature for taskCallbackManager'
)
