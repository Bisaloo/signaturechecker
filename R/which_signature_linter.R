#' @export
which_signature_linter <- lintr::make_linter_from_function_xpath(
  'which',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "arr.ind", "useNames"))})]'
  ),
  lint_message = '[signature] invalid signature for which'
)
