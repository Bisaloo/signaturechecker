#' Check signature of [read.dcf()]
#'
#' @export
read_dcf_signature_linter <- lintr::make_linter_from_function_xpath(
  'read.dcf',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "fields", "all", "keep.white"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for read.dcf'
)
