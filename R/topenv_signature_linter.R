#' @export
topenv_signature_linter <- lintr::make_linter_from_function_xpath(
  'topenv',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("envir", "matchThisEnv"))})]'
  ),
  lint_message = '[signature] invalid signature for topenv'
)
