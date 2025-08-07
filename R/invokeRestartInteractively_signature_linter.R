#' @export
invokeRestartInteractively_signature_linter <- lintr::make_linter_from_function_xpath(
  'invokeRestartInteractively',
  glue::glue(
    'following-sibling::SYMBOL_SUB[not({lintr:::xp_text_in_table("r")})]'
  ),
  lint_message = '[signature] invalid signature for invokeRestartInteractively'
)
