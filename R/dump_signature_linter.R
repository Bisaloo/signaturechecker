#' @export
dump_signature_linter <- lintr::make_linter_from_function_xpath(
  'dump',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("list", "file", "append", "control", "envir", "evaluate"))})]'
  ),
  lint_message = '[signature] invalid signature for dump'
)
