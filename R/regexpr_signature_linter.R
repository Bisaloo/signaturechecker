#' @export
regexpr_signature_linter <- lintr::make_linter_from_function_xpath(
  'regexpr',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "text", "ignore.case", "perl", "fixed", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for regexpr'
)
