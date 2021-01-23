#How much the average age of parliament members differ from the average age of the Country?
#Is there a correlation between the youth of Parliament members and political affiliation?
library(tidyverse)
names(prlm_df)

#filtering obs keeping only IT, NL and IS.
rec_prlm_df<- prlm_df %>% filter(COUNTRY == "Italy" | COUNTRY == "Netherlands" | COUNTRY == "Iceland")

#setting age_num as numerical
rec_prlm_df$AGE_NUM<-as.numeric(rec_prlm_df$AGE)

#computing average age for each country
group_prlm_df<-rec_prlm_df %>% group_by(COUNTRY) %>% summarise(avg_age = mean(AGE_NUM, na.rm = T))
View(group_prlm_df)
