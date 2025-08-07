#' @export
rank_signature_linter <- lintr::make_linter_from_function_xpath(
  'rank',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "na.last", "ties.method"))})]'
  ),
  lint_message = '[signature] invalid signature for rank'
)
