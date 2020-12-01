
presentp = function(p_value, round_places = 3){
  require(glue)
  return(case_when(p_value < .05 & p_value >= .01 ~ glue('< .05'),
                   p_value < .01 & p_value >= .001 ~ glue('< .01'),
                   p_value < .001 ~ glue('< .001'),
                   TRUE ~ glue('= {round(p_value, digits = round_places)}')))
}
