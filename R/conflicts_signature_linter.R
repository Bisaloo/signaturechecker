#' @export
conflicts_signature_linter <- lintr::make_linter_from_function_xpath(
  'conflicts',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("where", "detail"))})]'
  ),
  lint_message = '[signature] invalid signature for conflicts'
)
