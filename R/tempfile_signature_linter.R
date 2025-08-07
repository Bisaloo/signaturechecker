#' @export
tempfile_signature_linter <- lintr::make_linter_from_function_xpath(
  'tempfile',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "tmpdir", "fileext"))})]'
  ),
  lint_message = '[signature] invalid signature for tempfile'
)
