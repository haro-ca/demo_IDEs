library(tidyverse)

diamonds %>% 
    filter(cut == "Premium") %>% 
    write_csv("data/diamonds_clean.csv")












