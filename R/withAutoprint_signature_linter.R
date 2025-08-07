#' Check signature of [withAutoprint()]
#'
#' @export
withAutoprint_signature_linter <- lintr::make_linter_from_function_xpath(
  'withAutoprint',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("exprs", "evaluated", "local", "print.", "echo", "max.deparse.length", "width.cutoff", "deparseCtrl", "skip.echo", "file", "print.eval", "spaced", "verbose", "prompt.echo", "chdir", "catch.aborts", "encoding", "continue.echo", "keep.source"))})]
        or count(SYMBOL_SUB) > 19
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for withAutoprint'
)
