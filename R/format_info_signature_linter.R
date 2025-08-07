#' @export
format_info_signature_linter <- lintr::make_linter_from_function_xpath(
  'format.info',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "digits", "nsmall"))})]'
  ),
  lint_message = '[signature] invalid signature for format.info'
)
