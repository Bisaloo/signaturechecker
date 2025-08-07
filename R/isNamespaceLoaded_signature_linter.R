#' Check signature of [isNamespaceLoaded()]
#'
#' @export
isNamespaceLoaded_signature_linter <- lintr::make_linter_from_function_xpath(
  'isNamespaceLoaded',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("name")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for isNamespaceLoaded'
)
