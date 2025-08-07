#' Check signature of [use()]
#'
#' @export
use_signature_linter <- lintr::make_linter_from_function_xpath(
  'use',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "include.only"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for use'
)
