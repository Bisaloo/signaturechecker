#' @export
findInterval_signature_linter <- lintr::make_linter_from_function_xpath(
  'findInterval',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "vec", "rightmost.closed", "all.inside", "left.open", "checkSorted", "checkNA"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for findInterval'
)
