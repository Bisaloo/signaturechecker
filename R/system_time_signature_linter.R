#' @export
system_time_signature_linter <- lintr::make_linter_from_function_xpath(
  'system.time',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "gcFirst"))})]'
  ),
  lint_message = '[signature] invalid signature for system.time'
)
