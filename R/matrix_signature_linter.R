#' @export
matrix_signature_linter <- lintr::make_linter_from_function_xpath(
  'matrix',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("data", "nrow", "ncol", "byrow", "dimnames"))})]'
  ),
  lint_message = '[signature] invalid signature for matrix'
)
