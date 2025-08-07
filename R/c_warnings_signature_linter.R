#' Check signature of [c.warnings()]
#'
#' @export
c_warnings_signature_linter <- lintr::make_linter_from_function_xpath(
  'c.warnings',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("recursive")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for c.warnings'
)
