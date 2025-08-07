#' @export
memDecompress_signature_linter <- lintr::make_linter_from_function_xpath(
  'memDecompress',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "type", "asChar"))})]'
  ),
  lint_message = '[signature] invalid signature for memDecompress'
)
