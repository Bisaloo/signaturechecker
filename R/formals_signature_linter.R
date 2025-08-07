#' @export
formals_signature_linter <- lintr::make_linter_from_function_xpath(
  'formals',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("fun", "envir"))})]'
  ),
  lint_message = '[signature] invalid signature for formals'
)
