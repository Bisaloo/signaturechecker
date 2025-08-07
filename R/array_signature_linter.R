#' @export
array_signature_linter <- lintr::make_linter_from_function_xpath(
  'array',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("data", "dim", "dimnames"))})]'
  ),
  lint_message = '[signature] invalid signature for array'
)
