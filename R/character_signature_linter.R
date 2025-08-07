#' @export
character_signature_linter <- lintr::make_linter_from_function_xpath(
  'character',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("length")})]'
  ),
  lint_message = '[signature] invalid signature for character'
)
