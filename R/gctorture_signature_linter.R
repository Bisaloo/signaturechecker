#' @export
gctorture_signature_linter <- lintr::make_linter_from_function_xpath(
  'gctorture',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("on")})]'
  ),
  lint_message = '[signature] invalid signature for gctorture'
)
