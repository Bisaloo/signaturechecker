#' @export
environmentIsLocked_signature_linter <- lintr::make_linter_from_function_xpath(
  'environmentIsLocked',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("env")})]'
  ),
  lint_message = '[signature] invalid signature for environmentIsLocked'
)
