#' @export
assign_signature_linter <- lintr::make_linter_from_function_xpath(
  'assign',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "value", "pos", "envir", "inherits", "immediate"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for assign'
)
