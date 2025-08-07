#' @export
match_fun_signature_linter <- lintr::make_linter_from_function_xpath(
  'match.fun',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("FUN", "descend"))})]'
  ),
  lint_message = '[signature] invalid signature for match.fun'
)
