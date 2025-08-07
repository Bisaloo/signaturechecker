#' Check signature of [besselY()]
#'
#' @export
besselY_signature_linter <- lintr::make_linter_from_function_xpath(
  'besselY',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nu"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for besselY'
)
