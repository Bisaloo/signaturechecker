#' @export
grep_signature_linter <- lintr::make_linter_from_function_xpath(
  'grep',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "x", "ignore.case", "perl", "value", "fixed", "useBytes", "invert"))})]'
  ),
  lint_message = '[signature] invalid signature for grep'
)
