#' @export
gc_signature_linter <- lintr::make_linter_from_function_xpath(
  'gc',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("verbose", "reset", "full"))})]'
  ),
  lint_message = '[signature] invalid signature for gc'
)
