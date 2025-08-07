#' @export
environment_signature_linter <- lintr::make_linter_from_function_xpath(
  'environment',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("fun")})]'
  ),
  lint_message = '[signature] invalid signature for environment'
)
