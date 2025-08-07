#' @export
append_signature_linter <- lintr::make_linter_from_function_xpath(
  'append',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "values", "after"))})]'
  ),
  lint_message = '[signature] invalid signature for append'
)
