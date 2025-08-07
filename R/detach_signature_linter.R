#' @export
detach_signature_linter <- lintr::make_linter_from_function_xpath(
  'detach',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("name", "pos", "unload", "character.only", "force"))})]'
  ),
  lint_message = '[signature] invalid signature for detach'
)
