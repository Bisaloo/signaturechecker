#' @export
namespaceExport_signature_linter <- lintr::make_linter_from_function_xpath(
  'namespaceExport',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("ns", "vars"))})]
      or count(SYMBOL_SUB) > 2
    ]'
  ),
  lint_message = '[signature] invalid signature for namespaceExport'
)
