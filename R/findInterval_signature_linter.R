#' @export
findInterval_signature_linter <- lintr::make_linter_from_function_xpath(
  'findInterval',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "vec", "rightmost.closed", "all.inside", "left.open", "checkSorted", "checkNA"))})]'
  ),
  lint_message = '[signature] invalid signature for findInterval'
)
