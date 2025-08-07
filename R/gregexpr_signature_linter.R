#' @export
gregexpr_signature_linter <- lintr::make_linter_from_function_xpath(
  'gregexpr',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "text", "ignore.case", "perl", "fixed", "useBytes"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for gregexpr'
)
