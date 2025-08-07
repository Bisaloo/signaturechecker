#' @export
bzfile_signature_linter <- lintr::make_linter_from_function_xpath(
  'bzfile',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("description", "open", "encoding", "compression"))})]'
  ),
  lint_message = '[signature] invalid signature for bzfile'
)
