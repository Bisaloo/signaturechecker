#' @export
sQuote_signature_linter <- lintr::make_linter_from_function_xpath(
  'sQuote',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "q"))})]'
  ),
  lint_message = '[signature] invalid signature for sQuote'
)
