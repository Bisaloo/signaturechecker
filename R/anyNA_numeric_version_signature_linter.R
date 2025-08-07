#' @export
anyNA_numeric_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'anyNA.numeric_version',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "recursive"))})]
      or count(SYMBOL_SUB) > 2
    ]'
  ),
  lint_message = '[signature] invalid signature for anyNA.numeric_version'
)
