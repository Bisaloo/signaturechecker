#' @export
is_numeric_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'is.numeric.Date',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]'
  ),
  lint_message = '[signature] invalid signature for is.numeric.Date'
)
