#' @export
mat_or_vec_signature_linter <- lintr::make_linter_from_function_xpath(
  'mat.or.vec',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("nr", "nc"))})]'
  ),
  lint_message = '[signature] invalid signature for mat.or.vec'
)
