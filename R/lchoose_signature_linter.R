#' @export
lchoose_signature_linter <- lintr::make_linter_from_function_xpath(
  'lchoose',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("n", "k"))})]'
  ),
  lint_message = '[signature] invalid signature for lchoose'
)
