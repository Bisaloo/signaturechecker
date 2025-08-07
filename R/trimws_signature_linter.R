#' @export
trimws_signature_linter <- lintr::make_linter_from_function_xpath(
  'trimws',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "which", "whitespace"))})]'
  ),
  lint_message = '[signature] invalid signature for trimws'
)
