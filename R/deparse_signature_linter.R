#' @export
deparse_signature_linter <- lintr::make_linter_from_function_xpath(
  'deparse',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "width.cutoff", "backtick", "control", "nlines"))})]
      or count(SYMBOL_SUB) > 5
    ]'
  ),
  lint_message = '[signature] invalid signature for deparse'
)
