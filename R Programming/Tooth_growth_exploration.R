library(tidyverse)
data(ToothGrowth)
View(ToothGrowth)


filtered_tg <- filter(ToothGrowth,dose == 0.5)
arrange(filtered_tg,len)
View(filtered_tg)

filter_using_pipe <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
View(filter_using_pipe)