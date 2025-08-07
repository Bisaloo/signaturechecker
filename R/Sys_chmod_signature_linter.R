#' @export
Sys_chmod_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.chmod',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("paths", "mode", "use_umask"))})]'
  ),
  lint_message = '[signature] invalid signature for Sys.chmod'
)
