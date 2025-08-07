#' Check signature of [as.POSIXlt.character()]
#'
#' @export
as_POSIXlt_character_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.POSIXlt.character',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "tz", "format", "tryFormats", "optional"))})]
        or count(SYMBOL_SUB) > 5
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.POSIXlt.character'
)
