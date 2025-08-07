#' Check signature of [ngettext()]
#'
#' @export
ngettext_signature_linter <- lintr::make_linter_from_function_xpath(
  'ngettext',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "msg1", "msg2", "domain"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for ngettext'
)
