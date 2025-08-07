#' @export
qr_coef_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.coef',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "y"))})]'
  ),
  lint_message = '[signature] invalid signature for qr.coef'
)
