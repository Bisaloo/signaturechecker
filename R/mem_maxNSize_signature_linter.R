#' @export
mem_maxNSize_signature_linter <- lintr::make_linter_from_function_xpath(
  'mem.maxNSize',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("nsize")})]'
  ),
  lint_message = '[signature] invalid signature for mem.maxNSize'
)
