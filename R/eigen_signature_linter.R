#' @export
eigen_signature_linter <- lintr::make_linter_from_function_xpath(
  'eigen',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "symmetric", "only.values", "EISPACK"))})]'
  ),
  lint_message = '[signature] invalid signature for eigen'
)
