#' @export
unserialize_signature_linter <- lintr::make_linter_from_function_xpath(
  'unserialize',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("connection", "refhook"))})]
      or count(SYMBOL_SUB) > 2
    ]'
  ),
  lint_message = '[signature] invalid signature for unserialize'
)
