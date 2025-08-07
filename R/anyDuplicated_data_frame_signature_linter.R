#' Check signature of [anyDuplicated.data.frame()]
#'
#' @export
anyDuplicated_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'anyDuplicated.data.frame',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "incomparables", "fromLast"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for anyDuplicated.data.frame'
)
