#' Check signature of [memCompress()]
#'
#' @export
memCompress_signature_linter <- lintr::make_linter_from_function_xpath(
  'memCompress',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "type"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for memCompress'
)
