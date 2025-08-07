#' @export
builtins_signature_linter <- lintr::make_linter_from_function_xpath(
  'builtins',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("internal")})]'
  ),
  lint_message = '[signature] invalid signature for builtins'
)
