#' @export
replicate_signature_linter <- lintr::make_linter_from_function_xpath(
  'replicate',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "expr", "simplify"))})]'
  ),
  lint_message = '[signature] invalid signature for replicate'
)
