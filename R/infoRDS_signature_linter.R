#' @export
infoRDS_signature_linter <- lintr::make_linter_from_function_xpath(
  'infoRDS',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("file")})]'
  ),
  lint_message = '[signature] invalid signature for infoRDS'
)
