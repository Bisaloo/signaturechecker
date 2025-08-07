#' Check signature of [print.DLLInfo()]
#'
#' @export
print_DLLInfo_signature_linter <- lintr::make_linter_from_function_xpath(
  'print.DLLInfo',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "file", "append", "useBytes", "indent", "width", "keep.white"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for print.DLLInfo'
)
