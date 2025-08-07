#' @export
url_signature_linter <- lintr::make_linter_from_function_xpath(
  'url',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("description", "open", "blocking", "encoding", "method", "headers"))})]'
  ),
  lint_message = '[signature] invalid signature for url'
)
