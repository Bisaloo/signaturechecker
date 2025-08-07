#' Check signature of [as.character.condition()]
#'
#' @export
as_character_condition_signature_linter <- lintr::make_linter_from_function_xpath(
  'as.character.condition',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table("x")})]
        or count(SYMBOL_SUB) > 1
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for as.character.condition'
)
