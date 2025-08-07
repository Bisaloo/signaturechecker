#' @export
removeTaskCallback_signature_linter <- lintr::make_linter_from_function_xpath(
  'removeTaskCallback',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("id")})]'
  ),
  lint_message = '[signature] invalid signature for removeTaskCallback'
)
