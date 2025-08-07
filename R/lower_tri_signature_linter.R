#' @export
lower_tri_signature_linter <- lintr::make_linter_from_function_xpath(
  'lower.tri',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "diag"))})]'
  ),
  lint_message = '[signature] invalid signature for lower.tri'
)
