#' @export
delayedAssign_signature_linter <- lintr::make_linter_from_function_xpath(
  'delayedAssign',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "value", "eval.env", "assign.env"))})]'
  ),
  lint_message = '[signature] invalid signature for delayedAssign'
)
