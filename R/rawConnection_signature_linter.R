#' @export
rawConnection_signature_linter <- lintr::make_linter_from_function_xpath(
  'rawConnection',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "open"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for rawConnection'
)
