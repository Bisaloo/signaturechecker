#' @export
normalizePath_signature_linter <- lintr::make_linter_from_function_xpath(
  'normalizePath',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("path", "winslash", "mustWork"))})]'
  ),
  lint_message = '[signature] invalid signature for normalizePath'
)
