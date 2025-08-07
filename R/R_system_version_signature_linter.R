#' Check signature of [R_system_version()]
#'
#' @export
R_system_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'R_system_version',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "strict"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for R_system_version'
)
