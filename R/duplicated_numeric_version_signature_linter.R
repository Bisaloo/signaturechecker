#' Check signature of [duplicated.numeric_version()]
#'
#' @export
duplicated_numeric_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'duplicated.numeric_version',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "incomparables"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for duplicated.numeric_version'
)
