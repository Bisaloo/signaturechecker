#' @export
qr_X_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.X',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("qr", "complete", "ncol"))})]'
  ),
  lint_message = '[signature] invalid signature for qr.X'
)
