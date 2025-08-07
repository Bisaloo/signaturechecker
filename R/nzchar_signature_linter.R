#' @export
nzchar_signature_linter <- lintr::make_linter_from_function_xpath(
  'nzchar',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "keepNA"))})]'
  ),
  lint_message = '[signature] invalid signature for nzchar'
)
