#' @export
bindtextdomain_signature_linter <- lintr::make_linter_from_function_xpath(
  'bindtextdomain',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("domain", "dirname"))})]'
  ),
  lint_message = '[signature] invalid signature for bindtextdomain'
)
