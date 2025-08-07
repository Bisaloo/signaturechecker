#' @export
commandArgs_signature_linter <- lintr::make_linter_from_function_xpath(
  'commandArgs',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("trailingOnly")})]'
  ),
  lint_message = '[signature] invalid signature for commandArgs'
)
