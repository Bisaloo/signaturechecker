#' @export
q_signature_linter <- lintr::make_linter_from_function_xpath(
  'q',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("save", "status", "runLast"))})]'
  ),
  lint_message = '[signature] invalid signature for q'
)
