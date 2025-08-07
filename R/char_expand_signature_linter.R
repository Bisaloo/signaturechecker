#' @export
char_expand_signature_linter <- lintr::make_linter_from_function_xpath(
  'char.expand',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("input", "target", "nomatch"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for char.expand'
)
