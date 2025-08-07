#' @export
rep_len_signature_linter <- lintr::make_linter_from_function_xpath(
  'rep_len',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "length.out"))})]'
  ),
  lint_message = '[signature] invalid signature for rep_len'
)
