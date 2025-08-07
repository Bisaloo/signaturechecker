#' @export
charmatch_signature_linter <- lintr::make_linter_from_function_xpath(
  'charmatch',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "table", "nomatch"))})]'
  ),
  lint_message = '[signature] invalid signature for charmatch'
)
