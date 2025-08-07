#' @export
besselI_signature_linter <- lintr::make_linter_from_function_xpath(
  'besselI',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "nu", "expon.scaled"))})]'
  ),
  lint_message = '[signature] invalid signature for besselI'
)
