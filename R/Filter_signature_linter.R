#' @export
Filter_signature_linter <- lintr::make_linter_from_function_xpath(
  'Filter',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "x"))})]'
  ),
  lint_message = '[signature] invalid signature for Filter'
)
