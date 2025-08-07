#' @export
polyroot_signature_linter <- lintr::make_linter_from_function_xpath(
  'polyroot',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("z")})]'
  ),
  lint_message = '[signature] invalid signature for polyroot'
)
