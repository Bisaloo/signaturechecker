#' @export
use_signature_linter <- lintr::make_linter_from_function_xpath(
  'use',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("package", "include.only"))})]'
  ),
  lint_message = '[signature] invalid signature for use'
)
