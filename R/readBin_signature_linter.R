#' @export
readBin_signature_linter <- lintr::make_linter_from_function_xpath(
  'readBin',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("con", "what", "n", "size", "signed", "endian"))})]'
  ),
  lint_message = '[signature] invalid signature for readBin'
)
