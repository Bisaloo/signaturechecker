#' @export
on_exit_signature_linter <- lintr::make_linter_from_function_xpath(
  'on.exit',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "add", "after"))})]'
  ),
  lint_message = '[signature] invalid signature for on.exit'
)
