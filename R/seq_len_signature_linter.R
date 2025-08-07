#' @export
seq_len_signature_linter <- lintr::make_linter_from_function_xpath(
  'seq_len',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table("length.out")})]
      or count(SYMBOL_SUB) > 1
    ]'
  ),
  lint_message = '[signature] invalid signature for seq_len'
)
