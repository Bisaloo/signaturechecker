#' Check signature of [La.svd()]
#'
#' @export
La_svd_signature_linter <- lintr::make_linter_from_function_xpath(
  'La.svd',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nu", "nv"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for La.svd'
)
