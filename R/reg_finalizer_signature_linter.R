#' @export
reg_finalizer_signature_linter <- lintr::make_linter_from_function_xpath(
  'reg.finalizer',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("e", "f", "onexit"))})]'
  ),
  lint_message = '[signature] invalid signature for reg.finalizer'
)
