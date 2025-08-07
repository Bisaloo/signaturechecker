#' @export
new_env_signature_linter <- lintr::make_linter_from_function_xpath(
  'new.env',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("hash", "parent", "size"))})]'
  ),
  lint_message = '[signature] invalid signature for new.env'
)
