#' @export
formatC_signature_linter <- lintr::make_linter_from_function_xpath(
  'formatC',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "digits", "width", "format", "flag", "mode", "big.mark", "big.interval", "small.mark", "small.interval", "decimal.mark", "preserve.width", "zero.print", "replace.zero", "drop0trailing"))})]
        or count(SYMBOL_SUB) > 15
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for formatC'
)
