#' Check signature of [cut.default()]
#'
#' @export
cut_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'cut.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "breaks", "labels", "include.lowest", "right", "dig.lab", "ordered_result"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for cut.default'
)
