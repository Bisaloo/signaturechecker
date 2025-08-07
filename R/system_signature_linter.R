#' @export
system_signature_linter <- lintr::make_linter_from_function_xpath(
  'system',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("command", "intern", "ignore.stdout", "ignore.stderr", "wait", "input", "show.output.on.console", "minimized", "invisible", "timeout", "receive.console.signals"))})]
      or count(SYMBOL_SUB) > 11
    ]'
  ),
  lint_message = '[signature] invalid signature for system'
)
