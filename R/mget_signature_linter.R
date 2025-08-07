#' @export
mget_signature_linter <- lintr::make_linter_from_function_xpath(
  'mget',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "envir", "mode", "ifnotfound", "inherits"))})]'
  ),
  lint_message = '[signature] invalid signature for mget'
)
