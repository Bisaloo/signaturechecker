#' @export
strrep_signature_linter <- lintr::make_linter_from_function_xpath(
  'strrep',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "times"))})]'
  ),
  lint_message = '[signature] invalid signature for strrep'
)
