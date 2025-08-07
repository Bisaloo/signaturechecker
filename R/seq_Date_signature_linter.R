#' Check signature of [seq.Date()]
#'
#' @export
seq_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'seq.Date',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("from", "to", "by", "length.out", "along.with"))})]
        or count(SYMBOL_SUB) > 5
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for seq.Date'
)
