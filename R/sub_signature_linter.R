#' @export
sub_signature_linter <- lintr::make_linter_from_function_xpath(
  'sub',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "replacement", "x", "ignore.case", "perl", "fixed", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for sub'
)
