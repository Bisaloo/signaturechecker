#' Check signature of [droplevels.data.frame()]
#'
#' @export
droplevels_data_frame_signature_linter <- lintr::make_linter_from_function_xpath(
  'droplevels.data.frame',
  glue::glue(
    'parent::expr[
      expr[1][not(OP-DOLLAR)]
      and (
        SYMBOL_SUB[not({lintr:::xp_text_in_table(c("x", "except", "exclude"))})]
        or count(SYMBOL_SUB) > 3
      )
    ]'
  ),
  lint_message = '[signature] invalid signature for droplevels.data.frame'
)
