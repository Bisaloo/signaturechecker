#' Check signature of [formatDL()]
#'
#' @export
formatDL_signature_linter <- lintr::make_linter_from_function_xpath(
  'formatDL',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "y", "style", "width", "indent"))})]
        or count(SYMBOL_SUB) > 5
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for formatDL'
)
