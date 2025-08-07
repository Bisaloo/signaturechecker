#' @export
scan_signature_linter <- lintr::make_linter_from_function_xpath(
  'scan',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "what", "nmax", "n", "sep", "quote", "dec", "skip", "nlines", "na.strings", "flush", "fill", "strip.white", "quiet", "blank.lines.skip", "multi.line", "comment.char", "allowEscapes", "fileEncoding", "encoding", "text", "skipNul"))})]
        or count(SYMBOL_SUB) > 22
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for scan'
)
