#' @export
ls_signature_linter <- lintr::make_linter_from_function_xpath(
  'ls',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("name", "pos", "envir", "all.names", "pattern", "sorted"))})]'
  ),
  lint_message = '[signature] invalid signature for ls'
)
