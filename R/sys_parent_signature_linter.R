#' @export
sys_parent_signature_linter <- lintr::make_linter_from_function_xpath(
  'sys.parent',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("n")})]'
  ),
  lint_message = '[signature] invalid signature for sys.parent'
)
