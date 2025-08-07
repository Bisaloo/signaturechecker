#' @export
months_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'months.Date',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "abbreviate"))})]'
  ),
  lint_message = '[signature] invalid signature for months.Date'
)
