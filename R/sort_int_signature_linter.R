#' @export
sort_int_signature_linter <- lintr::make_linter_from_function_xpath(
  'sort.int',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "partial", "na.last", "decreasing", "method", "index.return"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for sort.int'
)
