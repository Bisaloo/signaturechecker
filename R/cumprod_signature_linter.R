#' @export
cumprod_signature_linter <- lintr::make_linter_from_function_xpath(
  'cumprod',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]'
  ),
  lint_message = '[signature] invalid signature for cumprod'
)
