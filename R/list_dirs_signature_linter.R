#' Check signature of [list.dirs()]
#'
#' @export
list_dirs_signature_linter <- lintr::make_linter_from_function_xpath(
  'list.dirs',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "full.names", "recursive"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for list.dirs'
)
