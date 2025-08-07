#' @export
balancePOSIXlt_signature_linter <- lintr::make_linter_from_function_xpath(
  'balancePOSIXlt',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "fill.only", "classed"))})]'
  ),
  lint_message = '[signature] invalid signature for balancePOSIXlt'
)
