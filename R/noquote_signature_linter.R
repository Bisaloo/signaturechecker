#' @export
noquote_signature_linter <- lintr::make_linter_from_function_xpath(
  'noquote',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("obj", "right"))})]'
  ),
  lint_message = '[signature] invalid signature for noquote'
)
