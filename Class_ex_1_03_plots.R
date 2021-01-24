# Let's plot our results 

library(ggplot2)
library(tidyr)

age_cmprd %>%
  gather("Type", "Values",-COUNTRY) %>%
  ggplot(aes(COUNTRY, Values, fill = Type))+
  geom_bar(position = "dodge", stat = "identity")+
  theme_bw()

library(rio)
  

