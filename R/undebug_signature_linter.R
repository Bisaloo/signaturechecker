#' @export
undebug_signature_linter <- lintr::make_linter_from_function_xpath(
  'undebug',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("fun", "signature"))})]'
  ),
  lint_message = '[signature] invalid signature for undebug'
)
