#' @export
setwd_signature_linter <- lintr::make_linter_from_function_xpath(
  'setwd',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("dir")})]'
  ),
  lint_message = '[signature] invalid signature for setwd'
)
