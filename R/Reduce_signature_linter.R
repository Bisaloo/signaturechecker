#' @export
Reduce_signature_linter <- lintr::make_linter_from_function_xpath(
  'Reduce',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "x", "init", "right", "accumulate", "simplify"))})]'
  ),
  lint_message = '[signature] invalid signature for Reduce'
)
