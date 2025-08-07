#' @export
zapsmall_signature_linter <- lintr::make_linter_from_function_xpath(
  'zapsmall',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "digits", "mFUN", "min.d"))})]'
  ),
  lint_message = '[signature] invalid signature for zapsmall'
)
