#' @export
trace_signature_linter <- lintr::make_linter_from_function_xpath(
  'trace',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("what", "tracer", "exit", "at", "print", "signature", "where", "edit"))})]
      or count(SYMBOL_SUB) > 8
    ]'
  ),
  lint_message = '[signature] invalid signature for trace'
)
