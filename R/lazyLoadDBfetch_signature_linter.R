#' @export
lazyLoadDBfetch_signature_linter <- lintr::make_linter_from_function_xpath(
  'lazyLoadDBfetch',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("key", "file", "compressed", "hook"))})]'
  ),
  lint_message = '[signature] invalid signature for lazyLoadDBfetch'
)
