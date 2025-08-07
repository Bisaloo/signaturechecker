#' @export
writeLines_signature_linter <- lintr::make_linter_from_function_xpath(
  'writeLines',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("text", "con", "sep", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for writeLines'
)
