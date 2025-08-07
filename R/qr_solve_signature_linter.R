#' @export
qr_solve_signature_linter <- lintr::make_linter_from_function_xpath(
  'qr.solve',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("a", "b", "tol"))})]'
  ),
  lint_message = '[signature] invalid signature for qr.solve'
)
