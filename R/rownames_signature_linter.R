#' @export
rownames_signature_linter <- lintr::make_linter_from_function_xpath(
  'rownames',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "do.NULL", "prefix"))})]
      or count(SYMBOL_SUB) > 3
    ]'
  ),
  lint_message = '[signature] invalid signature for rownames'
)
