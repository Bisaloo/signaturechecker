#' @export
source_signature_linter <- lintr::make_linter_from_function_xpath(
  'source',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "local", "echo", "print.eval", "exprs", "spaced", "verbose", "prompt.echo", "max.deparse.length", "width.cutoff", "deparseCtrl", "chdir", "catch.aborts", "encoding", "continue.echo", "skip.echo", "keep.source"))})]
        or count(SYMBOL_SUB) > 17
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for source'
)
