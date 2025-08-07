#' @export
grepRaw_signature_linter <- lintr::make_linter_from_function_xpath(
  'grepRaw',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "x", "offset", "ignore.case", "value", "fixed", "all", "invert"))})]'
  ),
  lint_message = '[signature] invalid signature for grepRaw'
)
