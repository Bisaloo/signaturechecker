#' @export
conflictRules_signature_linter <- lintr::make_linter_from_function_xpath(
  'conflictRules',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pkg", "mask.ok", "exclude"))})]'
  ),
  lint_message = '[signature] invalid signature for conflictRules'
)
