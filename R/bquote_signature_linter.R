#' @export
bquote_signature_linter <- lintr::make_linter_from_function_xpath(
  'bquote',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "where", "splice"))})]'
  ),
  lint_message = '[signature] invalid signature for bquote'
)
