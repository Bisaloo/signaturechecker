#' @export
attach_signature_linter <- lintr::make_linter_from_function_xpath(
  'attach',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("what", "pos", "name", "warn.conflicts"))})]'
  ),
  lint_message = '[signature] invalid signature for attach'
)
