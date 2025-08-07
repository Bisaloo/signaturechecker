#' @export
arrayInd_signature_linter <- lintr::make_linter_from_function_xpath(
  'arrayInd',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("ind", ".dim", ".dimnames", "useNames"))})]'
  ),
  lint_message = '[signature] invalid signature for arrayInd'
)
