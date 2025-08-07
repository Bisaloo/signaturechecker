#' @export
Sys_which_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.which',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("names")})]'
  ),
  lint_message = '[signature] invalid signature for Sys.which'
)
