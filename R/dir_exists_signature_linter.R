#' @export
dir_exists_signature_linter <- lintr::make_linter_from_function_xpath(
  'dir.exists',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table("paths")})]
      or count(SYMBOL_SUB) > 1
    ]'
  ),
  lint_message = '[signature] invalid signature for dir.exists'
)
