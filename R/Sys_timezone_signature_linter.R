#' @export
Sys_timezone_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.timezone',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("location")})]'
  ),
  lint_message = '[signature] invalid signature for Sys.timezone'
)
