#' Check signature of [as.vector.POSIXlt()]
#'
#' @export
as_vector_POSIXlt_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.vector.POSIXlt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "mode"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.vector.POSIXlt'
)
