#' Check signature of [as.array.default()]
#'
#' @export
as_array_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.array.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.array.default'
)
