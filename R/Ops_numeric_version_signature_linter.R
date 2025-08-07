#' Check signature of [Ops.numeric_version()]
#'
#' @export
Ops_numeric_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'Ops.numeric_version',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("e1", "e2"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Ops.numeric_version'
)
