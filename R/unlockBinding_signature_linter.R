#' @export
unlockBinding_signature_linter <- lintr::make_linter_from_function_xpath(
  'unlockBinding',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("sym", "env"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for unlockBinding'
)
