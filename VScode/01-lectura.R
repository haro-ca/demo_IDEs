library(tidyverse)

diamonds %>% 
    write_csv("diamantes.csv") 


diamonds %>%
    filter(cut == "Ideal") %>% 
    mutate(media = mean(carat)) 






