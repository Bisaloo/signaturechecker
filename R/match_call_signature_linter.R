#' @export
match_call_signature_linter <- lintr::make_linter_from_function_xpath(
  'match.call',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("definition", "call", "expand.dots", "envir"))})]'
  ),
  lint_message = '[signature] invalid signature for match.call'
)
