#' Check signature of [dump()]
#'
#' @export
dump_signature_linter <- lintr::make_linter_from_function_xpath(
  'dump',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("list", "file", "append", "control", "envir", "evaluate"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for dump'
)
