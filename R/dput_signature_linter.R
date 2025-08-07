#' @export
dput_signature_linter <- lintr::make_linter_from_function_xpath(
  'dput',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "file", "control"))})]'
  ),
  lint_message = '[signature] invalid signature for dput'
)
