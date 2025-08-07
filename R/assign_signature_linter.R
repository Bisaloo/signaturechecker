#' @export
assign_signature_linter <- lintr::make_linter_from_function_xpath(
  'assign',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "value", "pos", "envir", "inherits", "immediate"))})]'
  ),
  lint_message = '[signature] invalid signature for assign'
)
