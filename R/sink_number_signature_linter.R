#' @export
sink_number_signature_linter <- lintr::make_linter_from_function_xpath(
  'sink.number',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("type")})]'
  ),
  lint_message = '[signature] invalid signature for sink.number'
)
