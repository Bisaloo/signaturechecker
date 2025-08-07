#' @export
readChar_signature_linter <- lintr::make_linter_from_function_xpath(
  'readChar',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("con", "nchars", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for readChar'
)
