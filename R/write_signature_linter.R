#' @export
write_signature_linter <- lintr::make_linter_from_function_xpath(
  'write',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "file", "ncolumns", "append", "sep"))})]
      or count(SYMBOL_SUB) > 5
    ]'
  ),
  lint_message = '[signature] invalid signature for write'
)
