#' @export
R_system_version_signature_linter <- lintr::make_linter_from_function_xpath(
  'R_system_version',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "strict"))})]'
  ),
  lint_message = '[signature] invalid signature for R_system_version'
)
