#' @export
asNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'asNamespace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("ns", "base.OK"))})]'
  ),
  lint_message = '[signature] invalid signature for asNamespace'
)
