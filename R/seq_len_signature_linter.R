#' @export
seq_len_signature_linter <- lintr::make_linter_from_function_xpath(
  'seq_len',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("length.out")})]'
  ),
  lint_message = '[signature] invalid signature for seq_len'
)
