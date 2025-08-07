#' @export
match_arg_signature_linter <- lintr::make_linter_from_function_xpath(
  'match.arg',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("arg", "choices", "several.ok"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for match.arg'
)
