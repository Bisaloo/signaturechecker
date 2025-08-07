#' @export
getOption_signature_linter <- lintr::make_linter_from_function_xpath(
  'getOption',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "default"))})]'
  ),
  lint_message = '[signature] invalid signature for getOption'
)
