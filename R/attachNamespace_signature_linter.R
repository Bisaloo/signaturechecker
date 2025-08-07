#' @export
attachNamespace_signature_linter <- lintr::make_linter_from_function_xpath(
  'attachNamespace',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("ns", "pos", "depends", "exclude", "include.only"))})]'
  ),
  lint_message = '[signature] invalid signature for attachNamespace'
)
