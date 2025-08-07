#' @export
dir_signature_linter <- lintr::make_linter_from_function_xpath(
  'dir',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "pattern", "all.files", "full.names", "recursive", "ignore.case", "include.dirs", "no.."))})]
        or count(SYMBOL_SUB) > 8
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for dir'
)
