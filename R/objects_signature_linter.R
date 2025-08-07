#' @export
objects_signature_linter <- lintr::make_linter_from_function_xpath(
  'objects',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("name", "pos", "envir", "all.names", "pattern", "sorted"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for objects'
)
