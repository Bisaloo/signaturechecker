#' Check signature of [setNamespaceInfo()]
#'
#' @export
setNamespaceInfo_signature_linter <- lintr::make_linter_from_function_xpath(
  'setNamespaceInfo',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("ns", "which", "val"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for setNamespaceInfo'
)
