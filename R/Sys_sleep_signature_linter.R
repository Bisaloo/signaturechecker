#' @export
Sys_sleep_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.sleep',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("time")})]'
  ),
  lint_message = '[signature] invalid signature for Sys.sleep'
)
