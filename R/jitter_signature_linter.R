#' @export
jitter_signature_linter <- lintr::make_linter_from_function_xpath(
  'jitter',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "factor", "amount"))})]'
  ),
  lint_message = '[signature] invalid signature for jitter'
)
