#' @export
srcref_signature_linter <- lintr::make_linter_from_function_xpath(
  'srcref',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("srcfile", "lloc"))})]'
  ),
  lint_message = '[signature] invalid signature for srcref'
)
