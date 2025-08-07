#' Check signature of [summary.proc_time()]
#'
#' @export
summary_proc_time_signature_linter <- lintr::make_linter_from_function_xpath(
  'summary.proc_time',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("object")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for summary.proc_time'
)
