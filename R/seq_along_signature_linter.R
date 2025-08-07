#' @export
seq_along_signature_linter <- lintr::make_linter_from_function_xpath(
  'seq_along',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("along.with")})]'
  ),
  lint_message = '[signature] invalid signature for seq_along'
)
