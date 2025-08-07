#' Check signature of [mem.maxNSize()]
#'
#' @export
mem_maxNSize_signature_linter <- lintr::make_linter_from_function_xpath(
  'mem.maxNSize',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("nsize")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for mem.maxNSize'
)
