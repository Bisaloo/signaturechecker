#' Check signature of [identical()]
#'
#' @export
identical_signature_linter <- lintr::make_linter_from_function_xpath(
  'identical',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "y", "num.eq", "single.NA", "attrib.as.set", "ignore.bytecode", "ignore.environment", "ignore.srcref", "extptr.as.ref"))})]
        or count(SYMBOL_SUB) > 9
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for identical'
)
