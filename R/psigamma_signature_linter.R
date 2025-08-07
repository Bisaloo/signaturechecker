#' @export
psigamma_signature_linter <- lintr::make_linter_from_function_xpath(
  'psigamma',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "deriv"))})]'
  ),
  lint_message = '[signature] invalid signature for psigamma'
)
