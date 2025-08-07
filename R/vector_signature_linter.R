#' @export
vector_signature_linter <- lintr::make_linter_from_function_xpath(
  'vector',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("mode", "length"))})]'
  ),
  lint_message = '[signature] invalid signature for vector'
)
