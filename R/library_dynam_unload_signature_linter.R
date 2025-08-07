#' @export
library_dynam_unload_signature_linter <- lintr::make_linter_from_function_xpath(
  'library.dynam.unload',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("chname", "libpath", "verbose", "file.ext"))})]'
  ),
  lint_message = '[signature] invalid signature for library.dynam.unload'
)
