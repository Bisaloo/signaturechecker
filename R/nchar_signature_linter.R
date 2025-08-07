#' Check signature of [nchar()]
#'
#' @export
nchar_signature_linter <- lintr::make_linter_from_function_xpath(
  'nchar',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "type", "allowNA", "keepNA"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for nchar'
)
