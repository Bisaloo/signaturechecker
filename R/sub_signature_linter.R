#' @export
sub_signature_linter <- lintr::make_linter_from_function_xpath(
  'sub',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "replacement", "x", "ignore.case", "perl", "fixed", "useBytes"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for sub'
)
