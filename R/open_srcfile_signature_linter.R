#' Check signature of [open.srcfile()]
#'
#' @export
open_srcfile_signature_linter <- lintr::make_linter_from_function_xpath(
  'open.srcfile',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("con", "line"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for open.srcfile'
)
