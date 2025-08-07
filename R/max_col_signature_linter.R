#' @export
max_col_signature_linter <- lintr::make_linter_from_function_xpath(
  'max.col',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("m", "ties.method"))})]'
  ),
  lint_message = '[signature] invalid signature for max.col'
)
