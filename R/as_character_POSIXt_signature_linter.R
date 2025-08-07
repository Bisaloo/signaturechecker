#' Check signature of [as.character.POSIXt()]
#'
#' @export
as_character_POSIXt_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.character.POSIXt',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "digits", "OutDec"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.character.POSIXt'
)
