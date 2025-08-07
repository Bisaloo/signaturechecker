#' @export
Vectorize_signature_linter <- lintr::make_linter_from_function_xpath(
  'Vectorize',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("FUN", "vectorize.args", "SIMPLIFY", "USE.NAMES"))})]'
  ),
  lint_message = '[signature] invalid signature for Vectorize'
)
