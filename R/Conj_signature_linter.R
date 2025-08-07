#' Check signature of [Conj()]
#'
#' @export
Conj_signature_linter <- lintr::make_linter_from_function_xpath(
  'Conj',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("z")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Conj'
)
