#' @export
flush_signature_linter <- lintr::make_linter_from_function_xpath(
  'flush',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("con")})]'
  ),
  lint_message = '[signature] invalid signature for flush'
)
