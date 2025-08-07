#' Check signature of [anyNA.data.frame()]
#'
#' @export
anyNA_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'anyNA.data.frame',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "recursive"))})]
        or count(SYMBOL_SUB) > 2
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for anyNA.data.frame'
)
