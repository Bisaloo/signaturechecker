#' @export
scale_default_signature_linter <- lintr::make_linter_from_function_xpath(
  'scale.default',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "center", "scale"))})]'
  ),
  lint_message = '[signature] invalid signature for scale.default'
)
