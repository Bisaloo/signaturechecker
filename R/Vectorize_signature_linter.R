#' Check signature of [Vectorize()]
#'
#' @export
Vectorize_signature_linter <- lintr::make_linter_from_function_xpath(
  'Vectorize',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("FUN", "vectorize.args", "SIMPLIFY", "USE.NAMES"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Vectorize'
)
