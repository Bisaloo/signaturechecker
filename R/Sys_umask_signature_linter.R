#' @export
Sys_umask_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.umask',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("mode")})]'
  ),
  lint_message = '[signature] invalid signature for Sys.umask'
)
