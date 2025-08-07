#' @export
agrepl_signature_linter <- lintr::make_linter_from_function_xpath(
  'agrepl',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("pattern", "x", "max.distance", "costs", "ignore.case", "fixed", "useBytes"))})]'
  ),
  lint_message = '[signature] invalid signature for agrepl'
)
