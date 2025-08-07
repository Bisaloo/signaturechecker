#' @export
parent_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'parent.frame',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("n")})]'
  ),
  lint_message = '[signature] invalid signature for parent.frame'
)
