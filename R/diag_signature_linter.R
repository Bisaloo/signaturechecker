#' @export
diag_signature_linter <- lintr::make_linter_from_function_xpath(
  'diag',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nrow", "ncol", "names"))})]'
  ),
  lint_message = '[signature] invalid signature for diag'
)
