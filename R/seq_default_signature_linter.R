#' Check signature of [seq.default()]
#'
#' @export
seq_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'seq.default',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "to", "by", "length.out", "along.with", "which.call", "allowed"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for seq.default'
)
