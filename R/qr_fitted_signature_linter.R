#' @export
qr_fitted_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.fitted',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "y", "k"))})]'
  ),
  lint_message = '[signature] invalid signature for qr.fitted'
)
