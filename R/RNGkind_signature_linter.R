#' @export
RNGkind_signature_linter <- lintr::make_linter_from_function_xpath(
  'RNGkind',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("kind", "normal.kind", "sample.kind"))})]'
  ),
  lint_message = '[signature] invalid signature for RNGkind'
)
