#' Check signature of [toString.default()]
#'
#' @export
toString_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'toString.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "width"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for toString.default'
)
