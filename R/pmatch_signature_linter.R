#' @export
pmatch_signature_linter <- lintr::make_linter_from_function_xpath(
  'pmatch',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "table", "nomatch", "duplicates.ok"))})]'
  ),
  lint_message = '[signature] invalid signature for pmatch'
)
