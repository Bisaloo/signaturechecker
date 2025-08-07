#' Check signature of [is.complex()]
#'
#' @export
is_complex_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.complex',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for is.complex'
)
