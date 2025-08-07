#' @export
svd_signature_linter <- lintr::make_linter_from_function_xpath(
  'svd',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nu", "nv", "LINPACK"))})]'
  ),
  lint_message = '[signature] invalid signature for svd'
)
