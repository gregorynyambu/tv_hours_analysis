library(tidyverse)
library(here)

gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

tv_hours_table <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

install.packages("here")

write.csv(tv_hours_table, here("TV_Hours_by_Marital.csv"))