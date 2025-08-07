#' @export
dynGet_signature_linter <- lintr::make_linter_from_function_xpath(
  'dynGet',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "ifnotfound", "minframe", "inherits"))})]
      or count(SYMBOL_SUB) > 4
    ]'
  ),
  lint_message = '[signature] invalid signature for dynGet'
)
