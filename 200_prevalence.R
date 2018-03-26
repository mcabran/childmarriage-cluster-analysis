library(tidyverse)
library(Hmisc)
library(survey)

# Load the dataset
wm <- read_csv("Data/wm.csv")
wm <- rename(wm, 
             obs = X1)
wm <- group_by(wm, country)

countries <- c("Benin", "Cameroon", "CAR", "Chad", "DRC", "Ghana", "Guinea Bissau", "Mali", "Mauritania", "Nigeria", "Sao Tome and Principe", "Sierra Leone", "Togo")

unwtd.dispersion <- wm %>%
  summarise(Median = median(wagem, na.rm = TRUE),
            IQR = IQR(wagem, na.rm = TRUE),
            MAD = mad(wagem, na.rm = TRUE))
write.csv(unwtd.dispersion, "Data/Contingency tables/unwtd_disp_measures.csv")

wtd.quartiles <- rbind(trunc(wtd.quantile(wm$wagem[wm$country == "Benin"], weights = wm$wmweight, na.rm = TRUE)), 
           trunc(wtd.quantile(wm$wagem[wm$country == "Cameroon"], weights = wm$wmweight, na.rm = TRUE)), 
           trunc(wtd.quantile(wm$wagem[wm$country == "CAR"], weights = wm$wmweight, na.rm = TRUE)), 
           trunc(wtd.quantile(wm$wagem[wm$country == "Chad"], weights = wm$wmweight, na.rm = TRUE)), 
           trunc(wtd.quantile(wm$wagem[wm$country == "DRC"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Ghana"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Guinea Bissau"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Mali"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Mauritania"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Nigeria"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Sao Tome and Principe"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Sierra Leone"], weights = wm$wmweight, na.rm = TRUE)),
           trunc(wtd.quantile(wm$wagem[wm$country == "Togo"], weights = wm$wmweight, na.rm = TRUE))
           )
wtd.quartiles <- as.data.frame(wtd.quartiles, row.names = countries)
wtd.quartiles
write.csv(wtd.quartiles, "Data/Contingency tables/wtd_quartiles.csv")

prev.18 <- rbind(prop.table(table(wm$mar.uni.18[wm$country == "Benin"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Cameroon"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "CAR"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Chad"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "DRC"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Ghana"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Guinea Bissau"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Mali"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Mauritania"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Nigeria"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Sao Tome and Principe"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Sierra Leone"], useNA = "no")),
      prop.table(table(wm$mar.uni.18[wm$country == "Togo"], useNA = "no")))

prev.18 <- as.data.frame(prev.18, row.names = countries)
prev.18 <- round(prev.18*100, 2)
prev.18
`colnames<-`(prev.18, c("No", "Yes"))
write.csv(prev.18, "Data/Contingency tables/prev_less_18.csv")

prev.15.1 <- rbind(prop.table(table(wm$mar.uni.15.1[wm$country == "Benin"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Cameroon"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "CAR"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Chad"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "DRC"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Ghana"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Guinea Bissau"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Mali"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Mauritania"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Nigeria"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Sao Tome and Principe"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Sierra Leone"], useNA = "no")),
                 prop.table(table(wm$mar.uni.15.1[wm$country == "Togo"], useNA = "no")))

prev.15.1 <- as.data.frame(prev.15.1, row.names = countries)
prev.15.1 <- round(prev.15.1 * 100, 2)
prev.15.1
`colnames<-`(prev.15.1, c("No", "Yes"))
write.csv(prev.15.1, "Data/Contingency tables/prev_less-15_1.csv")

prev.15.2 <- rbind(prop.table(table(wm$mar.uni.15.2[wm$country == "Benin"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Cameroon"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "CAR"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Chad"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "DRC"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Ghana"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Guinea Bissau"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Mali"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Mauritania"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Nigeria"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Sao Tome and Principe"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Sierra Leone"], useNA = "no")),
                   prop.table(table(wm$mar.uni.15.2[wm$country == "Togo"], useNA = "no")))

prev.15.2 <- as.data.frame(prev.15.2, row.names = countries)
prev.15.2 <- round(prev.15.2 * 100, 2)
prev.15.2
`colnames<-`(prev.15.2, c("No", "Yes"))
write.csv(prev.15.2, "Data/Contingency tables/prev_less-15_2.csv")

table(wm$country, wm$mar.uni.15.1, useNA = "ifany")

wm1 <- subset(wm, wage >= 20)
table(wm1$country, wm1$mar.uni.15.2, useNA = "ifany")
table(wm1$country, wm1$mar.uni.18, useNA = "ifany")

write.csv(count(x = wm, mar.uni.15.1, wt = wmweight), "Temp/weighted_count_15_1.csv")
write.csv(count(x = wm, mar.uni.15.2, wt = wmweight), "Temp/weighted_count_15_2.csv")
write.csv(count(x = wm, mar.uni.18, wt = wmweight), "Temp/weighted_count_18.csv")

write.csv(table(wm$wage, wm$wagem), "Temp/cross_tab-age.csv")

wm.a <- subset(wm, wm$wage >= 20 & wm$wage < 90)
wm.a <- subset(wm.a, wm.a$wagem < 15)

write.csv(table(wm.a$wage, wm.a$wagem), "Temp/cross_tab-age_a.csv")

wm.a %>%
  count(wagem, wt = wmweight)

wm.a %>%
  ggplot(aes(x = country, y = wagem)) +
  geom_boxplot() +
  coord_flip()


wm %>%
  ggplot(aes(x = country, y = wagem)) +
  geom_boxplot() +
  coord_flip()









       
       