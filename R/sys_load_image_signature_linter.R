#' @export
sys_load_image_signature_linter <- lintr::make_linter_from_function_xpath(
  'sys.load.image',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("name", "quiet"))})]'
  ),
  lint_message = '[signature] invalid signature for sys.load.image'
)
