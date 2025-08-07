#' Check signature of [namespaceImportFrom()]
#'
#' @export
namespaceImportFrom_signature_linter <- lintr::make_linter_from_function_xpath(
  'namespaceImportFrom',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("self", "ns", "vars", "generics", "packages", "from", "except"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for namespaceImportFrom'
)
