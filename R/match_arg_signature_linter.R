#' @export
match_arg_signature_linter <- lintr::make_linter_from_function_xpath(
  'match.arg',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("arg", "choices", "several.ok"))})]'
  ),
  lint_message = '[signature] invalid signature for match.arg'
)
