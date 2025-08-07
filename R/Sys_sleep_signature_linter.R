#' @export
Sys_sleep_signature_linter <- lintr::make_linter_from_function_xpath(
  'Sys.sleep',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table("time")})]
      or count(SYMBOL_SUB) > 1
    ]'
  ),
  lint_message = '[signature] invalid signature for Sys.sleep'
)
