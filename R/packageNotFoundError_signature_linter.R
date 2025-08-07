#' Check signature of [packageNotFoundError()]
#'
#' @export
packageNotFoundError_signature_linter <- lintr::make_linter_from_function_xpath(
  'packageNotFoundError',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "lib.loc", "call"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for packageNotFoundError'
)
