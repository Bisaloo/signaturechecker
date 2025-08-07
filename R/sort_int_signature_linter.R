#' @export
sort_int_signature_linter <- lintr::make_linter_from_function_xpath(
  'sort.int',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "partial", "na.last", "decreasing", "method", "index.return"))})]'
  ),
  lint_message = '[signature] invalid signature for sort.int'
)
