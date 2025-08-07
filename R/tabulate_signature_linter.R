#' @export
tabulate_signature_linter <- lintr::make_linter_from_function_xpath(
  'tabulate',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("bin", "nbins"))})]'
  ),
  lint_message = '[signature] invalid signature for tabulate'
)
