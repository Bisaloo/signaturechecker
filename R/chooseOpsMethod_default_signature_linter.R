#' @export
chooseOpsMethod_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'chooseOpsMethod.default',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "y", "mx", "my", "cl", "reverse"))})]'
  ),
  lint_message = '[signature] invalid signature for chooseOpsMethod.default'
)
