#' @export
require_signature_linter <- lintr::make_linter_from_function_xpath(
  'require',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "lib.loc", "quietly", "warn.conflicts", "character.only", "mask.ok", "exclude", "include.only", "attach.required"))})]
      or count(SYMBOL_SUB) > 9
    ]'
  ),
  lint_message = '[signature] invalid signature for require'
)
