
#' Present p-values in RMarkdown
#'
#' This function takes a numeric p-value and converts it
#' into a string literal for inline presentation in RMarkdown.
#' @export
presentp = function(p_value, round_places = 3){
  return(case_when(p_value < .05 & p_value >= .01 ~ glue('< .05'),
                   p_value < .01 & p_value >= .001 ~ glue('< .01'),
                   p_value < .001 ~ glue('< .001'),
                   TRUE ~ glue('= {round(p_value, digits = round_places)}')))
}

