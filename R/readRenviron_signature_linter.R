#' @export
readRenviron_signature_linter <- lintr::make_linter_from_function_xpath(
  'readRenviron',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("path")})]'
  ),
  lint_message = '[signature] invalid signature for readRenviron'
)
