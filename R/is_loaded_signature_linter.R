#' Check signature of [is.loaded()]
#'
#' @export
is_loaded_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.loaded',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("symbol", "PACKAGE", "type"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for is.loaded'
)
