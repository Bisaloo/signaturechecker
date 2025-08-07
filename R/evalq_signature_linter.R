#' @export
evalq_signature_linter <- lintr::make_linter_from_function_xpath(
  'evalq',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "envir", "enclos"))})]'
  ),
  lint_message = '[signature] invalid signature for evalq'
)
