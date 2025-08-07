#' Check signature of [exists()]
#'
#' @export
exists_signature_linter <- lintr::make_linter_from_function_xpath(
  'exists',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "where", "envir", "frame", "mode", "inherits"))})]
        or count(SYMBOL_SUB) > 6
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for exists'
)
