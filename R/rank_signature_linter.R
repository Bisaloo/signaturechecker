#' @export
rank_signature_linter <- lintr::make_linter_from_function_xpath(
  'rank',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "na.last", "ties.method"))})]
      or count(SYMBOL_SUB) > 3
    ]'
  ),
  lint_message = '[signature] invalid signature for rank'
)
