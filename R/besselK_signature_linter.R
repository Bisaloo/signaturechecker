#' @export
besselK_signature_linter <- lintr::make_linter_from_function_xpath(
  'besselK',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nu", "expon.scaled"))})]'
  ),
  lint_message = '[signature] invalid signature for besselK'
)
