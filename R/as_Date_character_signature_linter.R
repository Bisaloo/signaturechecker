#' Check signature of [as.Date.character()]
#'
#' @export
as_Date_character_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.Date.character',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "format", "tryFormats", "optional"))})]
        or count(SYMBOL_SUB) > 4
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.Date.character'
)
