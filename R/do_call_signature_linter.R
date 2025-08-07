#' @export
do_call_signature_linter <- lintr::make_linter_from_function_xpath(
  'do.call',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("what", "args", "quote", "envir"))})]'
  ),
  lint_message = '[signature] invalid signature for do.call'
)
