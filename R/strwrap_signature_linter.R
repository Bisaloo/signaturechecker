#' Check signature of [strwrap()]
#'
#' @export
strwrap_signature_linter <- lintr::make_linter_from_function_xpath(
  'strwrap',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "width", "indent", "exdent", "prefix", "simplify", "initial"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for strwrap'
)
