#' Check signature of [is.name()]
#'
#' @export
is_name_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.name',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for is.name'
)
