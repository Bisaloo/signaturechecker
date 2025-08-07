#' @export
sys_source_signature_linter <- lintr::make_linter_from_function_xpath(
  'sys.source',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "envir", "chdir", "keep.source", "keep.parse.data", "toplevel.env"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for sys.source'
)
