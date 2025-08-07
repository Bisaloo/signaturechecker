#' @export
asplit_signature_linter <- lintr::make_linter_from_function_xpath(
  'asplit',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "MARGIN", "drop"))})]'
  ),
  lint_message = '[signature] invalid signature for asplit'
)
