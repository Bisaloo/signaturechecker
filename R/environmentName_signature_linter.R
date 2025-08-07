#' @export
environmentName_signature_linter <- lintr::make_linter_from_function_xpath(
  'environmentName',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("env")})]'
  ),
  lint_message = '[signature] invalid signature for environmentName'
)
