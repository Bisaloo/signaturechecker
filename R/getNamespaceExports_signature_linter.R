#' Check signature of [getNamespaceExports()]
#'
#' @export
getNamespaceExports_signature_linter <- lintr::make_linter_from_function_xpath(
  'getNamespaceExports',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("ns")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for getNamespaceExports'
)
