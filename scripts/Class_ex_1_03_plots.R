# Let's plot our results 

library(ggplot2)
library(tidyr)

age_cmprd %>%
  gather("Type", "Value",-COUNTRY) %>%
  ggplot(aes(COUNTRY, Value, fill = Type))+
  geom_bar(position = "dodge", stat = "identity")+
  theme_bw()


  

