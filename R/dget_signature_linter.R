#' @export
dget_signature_linter <- lintr::make_linter_from_function_xpath(
  'dget',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "keep.source"))})]'
  ),
  lint_message = '[signature] invalid signature for dget'
)
