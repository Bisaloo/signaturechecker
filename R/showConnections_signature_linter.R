#' @export
showConnections_signature_linter <- lintr::make_linter_from_function_xpath(
  'showConnections',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("all")})]'
  ),
  lint_message = '[signature] invalid signature for showConnections'
)
