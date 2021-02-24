options(tidyverse.quiet = TRUE)
library(tidyverse)


# AED ====
g1 <- diamonds %>% 
    ggplot(aes(x = depth, y = table)) +
    geom_point()

# Export ====
g1 %>% 
    ggsave("fig.png")
