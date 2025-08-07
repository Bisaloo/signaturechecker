#' @export
serialize_signature_linter <- lintr::make_linter_from_function_xpath(
  'serialize',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "connection", "ascii", "xdr", "version", "refhook"))})]'
  ),
  lint_message = '[signature] invalid signature for serialize'
)
