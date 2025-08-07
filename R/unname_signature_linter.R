#' @export
unname_signature_linter <- lintr::make_linter_from_function_xpath(
  'unname',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("obj", "force"))})]'
  ),
  lint_message = '[signature] invalid signature for unname'
)
