#' @export
file_rename_signature_linter <- lintr::make_linter_from_function_xpath(
  'file.rename',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "to"))})]
      or count(SYMBOL_SUB) > 2
    ]'
  ),
  lint_message = '[signature] invalid signature for file.rename'
)
