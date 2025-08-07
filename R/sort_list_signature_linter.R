#' @export
sort_list_signature_linter <- lintr::make_linter_from_function_xpath(
  'sort.list',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "partial", "na.last", "decreasing", "method"))})]
      or count(SYMBOL_SUB) > 5
    ]'
  ),
  lint_message = '[signature] invalid signature for sort.list'
)
