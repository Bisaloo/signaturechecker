#' @export
slice_index_signature_linter <- lintr::make_linter_from_function_xpath(
  'slice.index',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "MARGIN"))})]'
  ),
  lint_message = '[signature] invalid signature for slice.index'
)
