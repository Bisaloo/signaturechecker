#' @export
curlGetHeaders_signature_linter <- lintr::make_linter_from_function_xpath(
  'curlGetHeaders',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("url", "redirect", "verify", "timeout", "TLS"))})]'
  ),
  lint_message = '[signature] invalid signature for curlGetHeaders'
)
