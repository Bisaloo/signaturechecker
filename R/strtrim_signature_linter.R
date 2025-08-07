#' @export
strtrim_signature_linter <- lintr::make_linter_from_function_xpath(
  'strtrim',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "width"))})]'
  ),
  lint_message = '[signature] invalid signature for strtrim'
)
