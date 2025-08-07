#' Check signature of [file.copy()]
#'
#' @export
file_copy_signature_linter <- lintr::make_linter_from_function_xpath(
  'file.copy',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "to", "overwrite", "recursive", "copy.mode", "copy.date"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for file.copy'
)
