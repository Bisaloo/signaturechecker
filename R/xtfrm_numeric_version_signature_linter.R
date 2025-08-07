#' @export
xtfrm_numeric_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'xtfrm.numeric_version',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]'
  ),
  lint_message = '[signature] invalid signature for xtfrm.numeric_version'
)
