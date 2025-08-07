#' @export
as_vector_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.vector',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "mode"))})]'
  ),
  lint_message = '[signature] invalid signature for as.vector'
)
