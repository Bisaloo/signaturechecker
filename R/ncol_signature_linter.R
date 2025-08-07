#' @export
ncol_signature_linter <- lintr::make_linter_from_function_xpath(
  c('ncol', 'NCOL'),
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]'
  ),
  lint_message = '[signature] invalid signature for ncol'
)
