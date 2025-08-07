#' @export
saveRDS_signature_linter <- lintr::make_linter_from_function_xpath(
  'saveRDS',
  glue::glue(
    'parent::expr[
      SYMBOL_SUB[not({lintr:::xp_text_in_table(c("object", "file", "ascii", "version", "compress", "refhook"))})]
      or count(SYMBOL_SUB) > 6
    ]'
  ),
  lint_message = '[signature] invalid signature for saveRDS'
)
