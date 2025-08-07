#' @export
standardGeneric_signature_linter <- lintr::make_linter_from_function_xpath(
  'standardGeneric',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("f", "fdef"))})]'
  ),
  lint_message = '[signature] invalid signature for standardGeneric'
)
