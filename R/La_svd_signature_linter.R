#' @export
La_svd_signature_linter <- lintr::make_linter_from_function_xpath(
  'La.svd',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nu", "nv"))})]'
  ),
  lint_message = '[signature] invalid signature for La.svd'
)
