#' @export
read_dcf_signature_linter <- lintr::make_linter_from_function_xpath(
  'read.dcf',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "fields", "all", "keep.white"))})]'
  ),
  lint_message = '[signature] invalid signature for read.dcf'
)
