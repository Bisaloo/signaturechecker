#' @export
Sys_readlink_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.readlink',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("paths")})]'
  ),
  lint_message = '[signature] invalid signature for Sys.readlink'
)
