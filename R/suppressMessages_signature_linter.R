#' @export
suppressMessages_signature_linter <- lintr::make_linter_from_function_xpath(
  'suppressMessages',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "classes"))})]'
  ),
  lint_message = '[signature] invalid signature for suppressMessages'
)
