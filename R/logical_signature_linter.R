#' @export
logical_signature_linter <- lintr::make_linter_from_function_xpath(
  'logical',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table("length")})]
      or count(SYMBOL_SUB) > 1
    ]'
  ),
  lint_message = '[signature] invalid signature for logical'
)
