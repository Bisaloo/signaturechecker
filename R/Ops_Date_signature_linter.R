#' @export
Ops_Date_signature_linter <- lintr::make_linter_from_function_xpath(
  'Ops.Date',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("e1", "e2"))})]'
  ),
  lint_message = '[signature] invalid signature for Ops.Date'
)
