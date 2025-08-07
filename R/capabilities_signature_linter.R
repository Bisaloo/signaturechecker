#' @export
capabilities_signature_linter <- lintr::make_linter_from_function_xpath(
  'capabilities',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("what", "Xchk"))})]'
  ),
  lint_message = '[signature] invalid signature for capabilities'
)
