#' @export
strsplit_signature_linter <- lintr::make_linter_from_function_xpath(
  'strsplit',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "split", "fixed", "perl", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for strsplit'
)
