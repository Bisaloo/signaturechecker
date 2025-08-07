#' @export
untrace_signature_linter <- lintr::make_linter_from_function_xpath(
  'untrace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("what", "signature", "where"))})]'
  ),
  lint_message = '[signature] invalid signature for untrace'
)
