#' @export
pushBackLength_signature_linter <- lintr::make_linter_from_function_xpath(
  'pushBackLength',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("connection")})]'
  ),
  lint_message = '[signature] invalid signature for pushBackLength'
)
