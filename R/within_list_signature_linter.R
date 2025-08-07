#' Check signature of [within.list()]
#'
#' @export
within_list_signature_linter <- lintr::make_linter_from_function_xpath(
  'within.list',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("data", "expr", "keepAttrs"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for within.list'
)
