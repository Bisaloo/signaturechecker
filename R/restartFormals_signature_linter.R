#' @export
restartFormals_signature_linter <- lintr::make_linter_from_function_xpath(
  'restartFormals',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("r")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for restartFormals'
)
