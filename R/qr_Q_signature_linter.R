#' @export
qr_Q_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.Q',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "complete", "Dvec"))})]'
  ),
  lint_message = '[signature] invalid signature for qr.Q'
)
