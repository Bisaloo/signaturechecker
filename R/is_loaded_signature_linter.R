#' @export
is_loaded_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.loaded',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("symbol", "PACKAGE", "type"))})]'
  ),
  lint_message = '[signature] invalid signature for is.loaded'
)
