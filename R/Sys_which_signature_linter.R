#' Check signature of [Sys.which()]
#'
#' @export
Sys_which_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.which',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("names")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Sys.which'
)
