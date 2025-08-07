#' @export
get_signature_linter <- lintr::make_linter_from_function_xpath(
  'get',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "pos", "envir", "mode", "inherits"))})]
        or count(SYMBOL_SUB) > 5
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for get'
)
