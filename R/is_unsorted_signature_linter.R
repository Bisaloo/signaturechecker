#' @export
is_unsorted_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.unsorted',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "na.rm", "strictly"))})]'
  ),
  lint_message = '[signature] invalid signature for is.unsorted'
)
