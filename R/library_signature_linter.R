#' @export
library_signature_linter <- lintr::make_linter_from_function_xpath(
  'library',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "help", "pos", "lib.loc", "character.only", "logical.return", "warn.conflicts", "quietly", "verbose", "mask.ok", "exclude", "include.only", "attach.required"))})]'
  ),
  lint_message = '[signature] invalid signature for library'
)
