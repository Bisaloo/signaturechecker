#' Check signature of [c.noquote()]
#'
#' @export
c_noquote_signature_linter <- lintr::make_linter_from_function_xpath(
  'c.noquote',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("recursive")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for c.noquote'
)
