#' @export
strwrap_signature_linter <- lintr::make_linter_from_function_xpath(
  'strwrap',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "width", "indent", "exdent", "prefix", "simplify", "initial"))})]'
  ),
  lint_message = '[signature] invalid signature for strwrap'
)
