#' Check signature of [julian.POSIXt()]
#'
#' @export
julian_POSIXt_signature_linter <- lintr::make_linter_from_function_xpath(
  'julian.POSIXt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "origin"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for julian.POSIXt'
)
