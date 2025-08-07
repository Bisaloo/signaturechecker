#' @export
proportions_signature_linter <- lintr::make_linter_from_function_xpath(
  'proportions',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "margin"))})]'
  ),
  lint_message = '[signature] invalid signature for proportions'
)
