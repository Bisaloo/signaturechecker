#' @export
abbreviate_signature_linter <- lintr::make_linter_from_function_xpath(
  'abbreviate',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("names.arg", "minlength", "use.classes", "dot", "strict", "method", "named"))})]'
  ),
  lint_message = '[signature] invalid signature for abbreviate'
)
