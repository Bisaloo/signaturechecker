#' @export
browser_signature_linter <- lintr::make_linter_from_function_xpath(
  'browser',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("text", "condition", "expr", "skipCalls"))})]'
  ),
  lint_message = '[signature] invalid signature for browser'
)
