#' Check signature of [setwd()]
#'
#' @export
setwd_signature_linter <- lintr::make_linter_from_function_xpath(
  'setwd',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("dir")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for setwd'
)
