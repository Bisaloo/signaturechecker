#' @export
addTaskCallback_signature_linter <- lintr::make_linter_from_function_xpath(
  'addTaskCallback',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "data", "name"))})]'
  ),
  lint_message = '[signature] invalid signature for addTaskCallback'
)
