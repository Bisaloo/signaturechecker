#' @export
tempdir_signature_linter <- lintr::make_linter_from_function_xpath(
  'tempdir',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("check")})]'
  ),
  lint_message = '[signature] invalid signature for tempdir'
)
