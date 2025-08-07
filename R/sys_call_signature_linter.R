#' @export
sys_call_signature_linter <- lintr::make_linter_from_function_xpath(
  'sys.call',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("which")})]'
  ),
  lint_message = '[signature] invalid signature for sys.call'
)
