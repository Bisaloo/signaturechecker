#' @export
gl_signature_linter <- lintr::make_linter_from_function_xpath(
  'gl',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "k", "length", "labels", "ordered"))})]'
  ),
  lint_message = '[signature] invalid signature for gl'
)
