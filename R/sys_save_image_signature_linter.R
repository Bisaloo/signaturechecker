#' @export
sys_save_image_signature_linter <- lintr::make_linter_from_function_xpath(
  'sys.save.image',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("name")})]'
  ),
  lint_message = '[signature] invalid signature for sys.save.image'
)
