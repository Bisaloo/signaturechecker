#' @export
getDLLRegisteredRoutines_character_signature_linter <- lintr::make_linter_from_function_xpath(
  'getDLLRegisteredRoutines.character',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("dll", "addNames"))})]'
  ),
  lint_message = '[signature] invalid signature for getDLLRegisteredRoutines.character'
)
