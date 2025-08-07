#' @export
source_signature_linter <- lintr::make_linter_from_function_xpath(
  'source',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "local", "echo", "print.eval", "exprs", "spaced", "verbose", "prompt.echo", "max.deparse.length", "width.cutoff", "deparseCtrl", "chdir", "catch.aborts", "encoding", "continue.echo", "skip.echo", "keep.source"))})]'
  ),
  lint_message = '[signature] invalid signature for source'
)
