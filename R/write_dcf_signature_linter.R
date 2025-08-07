#' @export
write_dcf_signature_linter <- lintr::make_linter_from_function_xpath(
  'write.dcf',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "file", "append", "useBytes", "indent", "width", "keep.white"))})]
        or count(SYMBOL_SUB) > 7
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for write.dcf'
)
