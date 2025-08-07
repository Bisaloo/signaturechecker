#' Check signature of [sort.default()]
#'
#' @export
sort_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'sort.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "decreasing", "na.last", "partial", "method", "index.return"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for sort.default'
)
