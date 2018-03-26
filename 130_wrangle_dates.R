library(tidyverse)
library(lubridate)

wm.13 <- read_csv("Data_raw/wm_merged.csv")

# Wedding date
sort(unique(wm.13$MA8M), na.last = FALSE)
wm.13$MA8M <- gsub(97, NA, wm.13$MA8M)
wm.13$MA8M <- gsub(98, NA, wm.13$MA8M)
wm.13$MA8M <- gsub(99, NA, wm.13$MA8M)
wm.13$MA8M <- as.integer(wm.13$MA8M)

sort(unique(wm.13$MA8Y), na.last = FALSE)
wm.13$MA8Y <- gsub(9997, NA, wm.13$MA8Y)
wm.13$MA8Y <- gsub(9998, NA, wm.13$MA8Y)
wm.13$MA8Y <- gsub(9999, NA, wm.13$MA8Y)
wm.13$MA8Y <- as.integer(wm.13$MA8Y)

# Childbirth
sort(unique(wm.13$CM2M), na.last = FALSE)
wm.13$CM2M <- gsub(97, NA, wm.13$CM2M)
wm.13$CM2M <- gsub(98, NA, wm.13$CM2M)
wm.13$CM2M <- gsub(99, NA, wm.13$CM2M)
wm.13$CM2M <- as.integer(wm.13$CM2M)

sort(unique(wm.13$CM2Y), na.last = FALSE)
wm.13$CM2Y <- gsub(9997, NA, wm.13$CM2Y)
wm.13$CM2Y <- gsub(9998, NA, wm.13$CM2Y)
wm.13$CM2Y <- gsub(9999, NA, wm.13$CM2Y)
wm.13$CM2Y <- as.integer(wm.13$CM2Y)

# Woman's date of birth
sort(unique(wm.13$WB1M), na.last = FALSE)
wm.13$WB1M <- gsub(97, NA, wm.13$WB1M)
wm.13$WB1M <- gsub(98, NA, wm.13$WB1M)
wm.13$WB1M <- gsub(99, NA, wm.13$WB1M)
wm.13$WB1M <- as.integer(wm.13$WB1M)

sort(unique(wm.13$WB1Y), na.last = FALSE)
wm.13$WB1Y <- gsub(9997, NA, wm.13$WB1Y)
wm.13$WB1Y <- gsub(9998, NA, wm.13$WB1Y)
wm.13$WB1Y <- gsub(9999, NA, wm.13$WB1Y)
wm.13$WB1Y <- as.integer(wm.13$WB1Y)

# Organising date variable: woman's date of birth
WB1D <- rep(1, nrow(wm.13))
wm.13 <- mutate(wm.13, WB1D)
wm.13 <- wm.13 %>%
  unite(WB1, c(WB1D, WB1M, WB1Y), sep = "/", remove = TRUE)
wm.13$WB1 <- gsub("1/NA/NA", NA, wm.13$WB1, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

# Organizing dates variable: wedding date
MA8D <- rep(1, nrow(wm.13))
wm.13 <- mutate(wm.13, MA8D)
wm.13 <- wm.13 %>%
  unite(MA8, c(MA8D, MA8M, MA8Y), sep = "/", remove = TRUE)
wm.13$MA8 <- gsub("1/NA/NA", NA, wm.13$MA8, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)


# Organising date variable: childbirth
CM2D <- rep(1, nrow(wm.13))
wm.13 <- mutate(wm.13, CM2D)
wm.13 <- wm.13 %>%
  unite(CM2, c(CM2D, CM2M, CM2Y), sep = "/", remove = TRUE)
wm.13$CM2 <- gsub("1/NA/NA", NA, wm.13$CM2, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

remove(CM2D, WB1D, MA8D)

# Set dates as dates format

wm.13$WB1 <- dmy(wm.13$WB1)
wm.13$MA8 <- dmy(wm.13$MA8)
wm.13$CM2 <- dmy(wm.13$CM2)

# Age at marriage
age.first.union <- wm.13$MA8 - wm.13$WB1
wm.13 <- mutate(wm.13, age.first.union)
wm.13$age.first.union <- time_length(wm.13$age.first.union, "year")

# Age at first childbirth
age.first.deliv <- wm.13$CM2 - wm.13$WB1
wm.13 <- mutate(wm.13, age.first.deliv)
wm.13$age.first.deliv <- time_length(wm.13$age.first.deliv, "year")

# Time difference between first union and first childbirth
td.wed.child <- wm.13$CM2 - wm.13$MA8
wm.13 <- mutate(wm.13, td.wed.child)
wm.13$td.wed.child <- time_length(wm.13$td.wed.child, "months")

remove(td.wed.child, age.first.deliv)


write.csv(wm.13, "Data_raw/wm.13_with dates.csv")
