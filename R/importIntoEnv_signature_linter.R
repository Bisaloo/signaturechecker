#' @export
importIntoEnv_signature_linter <- lintr::make_linter_from_function_xpath(
  'importIntoEnv',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("impenv", "impnames", "expenv", "expnames"))})]'
  ),
  lint_message = '[signature] invalid signature for importIntoEnv'
)
