#' @export
save_image_signature_linter <- lintr::make_linter_from_function_xpath(
  'save.image',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("file", "version", "ascii", "compress", "safe"))})]'
  ),
  lint_message = '[signature] invalid signature for save.image'
)
