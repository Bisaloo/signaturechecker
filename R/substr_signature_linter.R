#' @export
substr_signature_linter <- lintr::make_linter_from_function_xpath(
  'substr',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "start", "stop"))})]'
  ),
  lint_message = '[signature] invalid signature for substr'
)
