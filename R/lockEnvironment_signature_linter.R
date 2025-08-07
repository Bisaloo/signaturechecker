#' @export
lockEnvironment_signature_linter <- lintr::make_linter_from_function_xpath(
  'lockEnvironment',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("env", "bindings"))})]'
  ),
  lint_message = '[signature] invalid signature for lockEnvironment'
)
