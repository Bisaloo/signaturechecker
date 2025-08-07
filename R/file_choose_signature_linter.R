#' @export
file_choose_signature_linter <- lintr::make_linter_from_function_xpath(
  'file.choose',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("new")})]'
  ),
  lint_message = '[signature] invalid signature for file.choose'
)
