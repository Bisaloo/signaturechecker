#' @export
forwardsolve_signature_linter <- lintr::make_linter_from_function_xpath(
  'forwardsolve',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("l", "x", "k", "upper.tri", "transpose"))})]'
  ),
  lint_message = '[signature] invalid signature for forwardsolve'
)
