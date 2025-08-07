#' Check signature of [diff.default()]
#'
#' @export
diff_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'diff.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "lag", "differences"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for diff.default'
)
