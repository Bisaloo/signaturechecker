#' @export
RNGversion_signature_linter <- lintr::make_linter_from_function_xpath(
  'RNGversion',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("vstr")})]'
  ),
  lint_message = '[signature] invalid signature for RNGversion'
)
