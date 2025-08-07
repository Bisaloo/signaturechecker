#' @export
parse_signature_linter <- lintr::make_linter_from_function_xpath(
  'parse',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "n", "text", "prompt", "keep.source", "srcfile", "encoding"))})]
      or count(SYMBOL_SUB) > 7
    ]'
  ),
  lint_message = '[signature] invalid signature for parse'
)
