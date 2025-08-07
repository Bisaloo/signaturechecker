#' @export
scan_signature_linter <- lintr::make_linter_from_function_xpath(
  'scan',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "what", "nmax", "n", "sep", "quote", "dec", "skip", "nlines", "na.strings", "flush", "fill", "strip.white", "quiet", "blank.lines.skip", "multi.line", "comment.char", "allowEscapes", "fileEncoding", "encoding", "text", "skipNul"))})]'
  ),
  lint_message = '[signature] invalid signature for scan'
)
