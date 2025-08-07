#' Check signature of [close.srcfile()]
#'
#' @export
close_srcfile_signature_linter <- lintr::make_linter_from_function_xpath(
  'close.srcfile',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("con")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for close.srcfile'
)
