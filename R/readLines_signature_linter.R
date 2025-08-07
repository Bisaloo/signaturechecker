#' @export
readLines_signature_linter <- lintr::make_linter_from_function_xpath(
  'readLines',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("con", "n", "ok", "warn", "encoding", "skipNul"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for readLines'
)
