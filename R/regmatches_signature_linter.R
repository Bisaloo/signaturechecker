#' @export
regmatches_signature_linter <- lintr::make_linter_from_function_xpath(
  'regmatches',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "m", "invert"))})]'
  ),
  lint_message = '[signature] invalid signature for regmatches'
)
