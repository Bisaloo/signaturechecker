#' @export
fifo_signature_linter <- lintr::make_linter_from_function_xpath(
  'fifo',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("description", "open", "blocking", "encoding"))})]'
  ),
  lint_message = '[signature] invalid signature for fifo'
)
