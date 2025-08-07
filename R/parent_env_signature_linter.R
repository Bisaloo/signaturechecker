#' Check signature of [parent.env()]
#'
#' @export
parent_env_signature_linter <- lintr::make_linter_from_function_xpath(
  'parent.env',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("env")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for parent.env'
)
