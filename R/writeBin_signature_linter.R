#' @export
writeBin_signature_linter <- lintr::make_linter_from_function_xpath(
  'writeBin',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "con", "size", "endian", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for writeBin'
)
