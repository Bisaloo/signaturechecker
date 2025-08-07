#' Check signature of [normalizePath()]
#'
#' @export
normalizePath_signature_linter <- lintr::make_linter_from_function_xpath(
  'normalizePath',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "winslash", "mustWork"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for normalizePath'
)
