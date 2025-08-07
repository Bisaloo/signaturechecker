#' @export
readRDS_signature_linter <- lintr::make_linter_from_function_xpath(
  'readRDS',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "refhook"))})]'
  ),
  lint_message = '[signature] invalid signature for readRDS'
)
