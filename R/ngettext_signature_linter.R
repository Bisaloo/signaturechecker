#' @export
ngettext_signature_linter <- lintr::make_linter_from_function_xpath(
  'ngettext',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "msg1", "msg2", "domain"))})]'
  ),
  lint_message = '[signature] invalid signature for ngettext'
)
