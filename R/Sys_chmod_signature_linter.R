#' Check signature of [Sys.chmod()]
#'
#' @export
Sys_chmod_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.chmod',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("paths", "mode", "use_umask"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for Sys.chmod'
)
