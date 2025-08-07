#' Check signature of [readRDS()]
#'
#' @export
readRDS_signature_linter <- lintr::make_linter_from_function_xpath(
  'readRDS',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "refhook"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for readRDS'
)
