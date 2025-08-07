#' @export
packageEvent_signature_linter <- lintr::make_linter_from_function_xpath(
  'packageEvent',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pkgname", "event"))})]'
  ),
  lint_message = '[signature] invalid signature for packageEvent'
)
