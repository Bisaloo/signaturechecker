#' @export
set_seed_signature_linter <- lintr::make_linter_from_function_xpath(
  'set.seed',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table(c("seed", "kind", "normal.kind", "sample.kind"))})]'
  ),
  lint_message = '[signature] invalid signature for set.seed'
)
