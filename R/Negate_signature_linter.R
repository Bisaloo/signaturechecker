#' @export
Negate_signature_linter <- lintr::make_linter_from_function_xpath(
  'Negate',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("f")})]'
  ),
  lint_message = '[signature] invalid signature for Negate'
)
