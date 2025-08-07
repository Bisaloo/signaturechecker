#' @export
rawToChar_signature_linter <- lintr::make_linter_from_function_xpath(
  'rawToChar',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "multiple"))})]'
  ),
  lint_message = '[signature] invalid signature for rawToChar'
)
