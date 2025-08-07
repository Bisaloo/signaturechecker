#' @export
strptime_signature_linter <- lintr::make_linter_from_function_xpath(
  'strptime',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "format", "tz"))})]'
  ),
  lint_message = '[signature] invalid signature for strptime'
)
