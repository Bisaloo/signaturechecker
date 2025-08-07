#' Check signature of [sample()]
#'
#' @export
sample_signature_linter <- lintr::make_linter_from_function_xpath(
  'sample',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "size", "replace", "prob"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for sample'
)
