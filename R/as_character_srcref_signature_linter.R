#' Check signature of [as.character.srcref()]
#'
#' @export
as_character_srcref_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.character.srcref',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "useSource", "to"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.character.srcref'
)
