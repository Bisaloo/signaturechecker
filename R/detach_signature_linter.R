#' @export
detach_signature_linter <- lintr::make_linter_from_function_xpath(
  'detach',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("name", "pos", "unload", "character.only", "force"))})]
      or count(SYMBOL_SUB) > 5
    ]'
  ),
  lint_message = '[signature] invalid signature for detach'
)
