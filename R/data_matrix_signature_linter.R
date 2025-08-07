#' @export
data_matrix_signature_linter <- lintr::make_linter_from_function_xpath(
  'data.matrix',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("frame", "rownames.force"))})]'
  ),
  lint_message = '[signature] invalid signature for data.matrix'
)
