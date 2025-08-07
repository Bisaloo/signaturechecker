#' @export
unlist_signature_linter <- lintr::make_linter_from_function_xpath(
  'unlist',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "recursive", "use.names"))})]
      or count(SYMBOL_SUB) > 3
    ]'
  ),
  lint_message = '[signature] invalid signature for unlist'
)
