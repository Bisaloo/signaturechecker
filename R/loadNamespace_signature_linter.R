#' @export
loadNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'loadNamespace',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "lib.loc", "keep.source", "partial", "versionCheck", "keep.parse.data"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for loadNamespace'
)
