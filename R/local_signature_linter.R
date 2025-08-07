#' @export
local_signature_linter <- lintr::make_linter_from_function_xpath(
  'local',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("expr", "envir"))})]'
  ),
  lint_message = '[signature] invalid signature for local'
)
