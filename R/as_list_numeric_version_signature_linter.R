#' Check signature of [as.list.numeric_version()]
#'
#' @export
as_list_numeric_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.list.numeric_version',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.list.numeric_version'
)
