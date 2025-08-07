#' Check signature of [sink()]
#'
#' @export
sink_signature_linter <- lintr::make_linter_from_function_xpath(
  'sink',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "append", "type", "split"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for sink'
)
