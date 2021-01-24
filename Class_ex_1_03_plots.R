# Let's plot our results 

library(ggplot2)
library(tidyr)
library(tidyverse)

#renaming vars for the plot
age_cmprd<- rename(age_cmprd, "age of PMs (avg)" = "average age of PMs")
age_cmprd<- rename( age_cmprd, "age of population (median)" = ppl_mdn)
age_cmprd<- rename(age_cmprd, "difference" = diff_age)


#plotting a bar graph of our comparison
age_cmprd %>%
  gather("Type", "Value",-COUNTRY) %>%
  ggplot(aes(COUNTRY, Value, fill = Type))+
  geom_bar(position = "dodge", stat = "identity")+
  labs(title = "Comparison between PMs average age and median age of population")+
ylab("AGE")+
  scale_fill_manual(values = c("aquamarine", "dark blue","orange"), "")+
  theme_bw()

#finished
  
  

