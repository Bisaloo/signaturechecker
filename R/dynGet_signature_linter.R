#' @export
dynGet_signature_linter <- lintr::make_linter_from_function_xpath(
  'dynGet',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "ifnotfound", "minframe", "inherits"))})]'
  ),
  lint_message = '[signature] invalid signature for dynGet'
)
