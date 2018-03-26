library(tidyverse)
library(lubridate)

wm.13 <- read_csv("Data_raw/wm.13_with dates.csv")

wm.13 <- rename(wm.13, 
             obs = X1)

# Area
unique(wm.13$HH6)
wm.13$area[wm.13$HH6 == 1] <- "Urban"
wm.13$area[wm.13$HH6 == 2] <- "Rural"
table(wm.13$area, wm.13$HH6, useNA = "always")

# Women's age classes
unique(wm.13$WB2)
wm.13$age1 <- 0
wm.13$age2 <- 0
wm.13$age3 <- 0
wm.13$age4 <- 0
wm.13$age5 <- 0
wm.13$age6 <- 0
wm.13$age7 <- 0

wm.13$age1[wm.13$WB2 >= 15 & wm.13$WB2 < 20] <- 1
wm.13$age2[wm.13$WB2 >= 20 & wm.13$WB2 < 25] <- 1
wm.13$age3[wm.13$WB2 >= 25 & wm.13$WB2 < 30] <- 1
wm.13$age4[wm.13$WB2 >= 30 & wm.13$WB2 < 35] <- 1
wm.13$age5[wm.13$WB2 >= 35 & wm.13$WB2 < 40] <- 1
wm.13$age6[wm.13$WB2 >= 40 & wm.13$WB2 < 45] <- 1
wm.13$age7[wm.13$WB2 >= 45 & wm.13$WB2 < 50] <- 1

wm.13$age1[is.na(wm.13$WB2)] <- NA
wm.13$age2[is.na(wm.13$WB2)] <- NA
wm.13$age3[is.na(wm.13$WB2)] <- NA
wm.13$age4[is.na(wm.13$WB2)] <- NA
wm.13$age5[is.na(wm.13$WB2)] <- NA
wm.13$age6[is.na(wm.13$WB2)] <- NA
wm.13$age7[is.na(wm.13$WB2)] <- NA

table(wm.13$age1, useNA = "always")
table(wm.13$age2, useNA = "always")
table(wm.13$age3, useNA = "always")
table(wm.13$age4, useNA = "always")
table(wm.13$age5, useNA = "always")
table(wm.13$age6, useNA = "always")
table(wm.13$age7, useNA = "always")

nrow(wm.13) == sum(sum(wm.13$age1, na.rm = TRUE), sum(wm.13$age2, na.rm = TRUE), sum(wm.13$age3, na.rm = TRUE), sum(wm.13$age4, na.rm = TRUE), sum(wm.13$age5, na.rm = TRUE), sum(wm.13$age6, na.rm = TRUE),sum(wm.13$age7, na.rm = TRUE), sum(is.na(wm.13$age1)))

# Age group long format
wm.13$age.group <- 0
wm.13$age.group[wm.13$WB2 >= 15 & wm.13$WB2 < 20] <- 1
wm.13$age.group[wm.13$WB2 >= 20 & wm.13$WB2 < 25] <- 2
wm.13$age.group[wm.13$WB2 >= 25 & wm.13$WB2 < 30] <- 3
wm.13$age.group[wm.13$WB2 >= 30 & wm.13$WB2 < 35] <- 4
wm.13$age.group[wm.13$WB2 >= 35 & wm.13$WB2 < 40] <- 5
wm.13$age.group[wm.13$WB2 >= 40 & wm.13$WB2 < 45] <- 6
wm.13$age.group[wm.13$WB2 >= 45 & wm.13$WB2 < 50] <- 7
wm.13$age.group[wm.13$age.group == 0] <- NA
table(wm.13$age.group, useNA = "ifany")

# Ever attended school
unique(wm.13$WB3)
wm.13$ever.attend <- wm.13$WB3
wm.13$ever.attend[wm.13$WB3 == 2] <- 0
wm.13$ever.attend[wm.13$WB3 == 9] <- NA
wm.13$ever.attend[is.na(wm.13$WB3)] <- NA
table(wm.13$WB3, wm.13$ever.attend, useNA = "always")

# Highest schooling attended
unique(wm.13$WB4)
wm.13$preschool <- 0
wm.13$primary <- 0
wm.13$secondary <- 0
wm.13$higher <- 0

wm.13$preschool[wm.13$WB4 == 0] <- 1
wm.13$primary[wm.13$WB4 == 1] <- 1
wm.13$secondary[wm.13$WB4 == 2] <- 1
wm.13$higher[wm.13$WB4 == 3] <- 1
wm.13$higher[wm.13$WB4 == 4] <- 1
wm.13$higher[wm.13$WB4 == 5] <- 1
wm.13$higher[wm.13$WB4 == 6] <- 1

wm.13$preschool[wm.13$WB4 == 8] <- NA
wm.13$primary[wm.13$WB4 == 8] <- NA
wm.13$secondary[wm.13$WB4 == 8] <- NA
wm.13$higher[wm.13$WB4 == 8] <- NA

wm.13$preschool[wm.13$WB4 == 9] <- NA
wm.13$primary[wm.13$WB4 == 9] <- NA
wm.13$secondary[wm.13$WB4 == 9] <- NA
wm.13$higher[wm.13$WB4 == 9] <- NA

wm.13$preschool[is.na(wm.13$WB4)] <- NA
wm.13$primary[is.na(wm.13$WB4)] <- NA
wm.13$secondary[is.na(wm.13$WB4)] <- NA
wm.13$higher[is.na(wm.13$WB4)] <- NA

table(wm.13$preschool, useNA = "always")
table(wm.13$primary, useNA = "always")
table(wm.13$secondary, useNA = "always")
table(wm.13$higher, useNA = "always")

# Highest schooling attended long format
unique(wm.13$WB4)
wm.13$schooling <- wm.13$WB4
wm.13$schooling[wm.13$WB4 == 0] <- 1
wm.13$schooling[wm.13$WB4 == 1] <- 2
wm.13$schooling[wm.13$WB4 == 2] <- 3
wm.13$schooling[wm.13$WB4 == 3] <- 4
wm.13$schooling[wm.13$WB4 == 4] <- 4
wm.13$schooling[wm.13$WB4 == 5] <- 4
wm.13$schooling[wm.13$WB4 == 6] <- 4
wm.13$schooling[wm.13$WB4 == 8] <- NA
wm.13$schooling[wm.13$WB4 == 9] <- NA
table(wm.13$WB4, wm.13$schooling, useNA = "ifany")

# Has ever had children
unique(wm.13$CM1)
wm.13$has.child <- 0
wm.13$has.child[wm.13$CM1 == 1] <- 1
wm.13$has.child[wm.13$CM1 == 9] <- NA
wm.13$has.child[is.na(wm.13$CM1)] <- NA
table(wm.13$CM1, wm.13$has.child, useNA = "always")

# Has been circumcised or cut
unique(wm.13$FG3)
wm.13$is.fgm <- 0
wm.13$is.fgm[wm.13$FG3 == 1] <- 1
wm.13$is.fgm[wm.13$FG3 == 9] <- NA
wm.13$is.fgm[is.na(wm.13$FG3)] <- NA
table(wm.13$FG3, wm.13$is.fgm, useNA = "always")

# Age at circumcision or cut
sort(unique(wm.13$FG7), na.last = FALSE)
wm.13$age.fgm <- wm.13$FG7
wm.13$age.fgm[wm.13$FG7 == 98] <- NA
wm.13$age.fgm[wm.13$FG7 == 99] <- NA
wm.13$age.fgm[is.na(wm.13$FG7)] <- NA
# head(table(wm.13$FG7, wm.13$age.fgm, useNA = "always"))

# Attitude towards domestic violence
unique(wm.13$DV1A)
wm.13$dm.go.out <- wm.13$DV1A
wm.13$dm.go.out[wm.13$DV1A == 2] <- 0
wm.13$dm.go.out[wm.13$DV1A == 8] <- NA
wm.13$dm.go.out[wm.13$DV1A == 9] <- NA
table(wm.13$DV1A, wm.13$dm.go.out, useNA = "always")

unique(wm.13$DV1B)
wm.13$dm.negl.ch <- wm.13$DV1B
wm.13$dm.negl.ch[wm.13$DV1B == 2] <- 0
wm.13$dm.negl.ch[wm.13$DV1B == 8] <- NA
wm.13$dm.negl.ch[wm.13$DV1B == 9] <- NA
table(wm.13$DV1B, wm.13$dm.negl.ch, useNA = "always")

unique(wm.13$DV1C)
wm.13$dm.argue <- wm.13$DV1C
wm.13$dm.argue[wm.13$DV1C == 2] <- 0
wm.13$dm.argue[wm.13$DV1C == 8] <- NA
wm.13$dm.argue[wm.13$DV1C == 9] <- NA
table(wm.13$DV1C, wm.13$dm.argue, useNA = "always")

unique(wm.13$DV1D)
wm.13$dm.refuse.sex <- wm.13$DV1D
wm.13$dm.refuse.sex[wm.13$DV1D == 2] <- 0
wm.13$dm.refuse.sex[wm.13$DV1D == 8] <- NA
wm.13$dm.refuse.sex[wm.13$DV1D == 9] <- NA
table(wm.13$DV1D, wm.13$dm.refuse.sex, useNA = "always")

unique(wm.13$DV1E)
wm.13$dm.burns.food <- wm.13$DV1E
wm.13$dm.burns.food[wm.13$DV1E == 2] <- 0
wm.13$dm.burns.food[wm.13$DV1E == 8] <- NA
wm.13$dm.burns.food[wm.13$DV1E == 9] <- NA
table(wm.13$DV1E, wm.13$dm.burns.food, useNA = "always")

wm.13$dm.att <- wm.13$dm.go.out + wm.13$dm.negl.ch + wm.13$dm.argue + wm.13$dm.refuse.sex + wm.13$dm.burns.food
table(wm.13$dm.att, useNA = "always")

wm.13$dm.str.dis <- 0
wm.13$dm.dis <- 0
wm.13$dm.sw.dis <- 0
wm.13$dm.sw.app <- 0
wm.13$dm.app <- 0
wm.13$dm.str.appr <- 0

wm.13$dm.str.dis[wm.13$dm.att == 0] <- 1
wm.13$dm.dis[wm.13$dm.att == 1] <- 1
wm.13$dm.sw.dis[wm.13$dm.att == 2] <- 1
wm.13$dm.sw.app[wm.13$dm.att == 3] <- 1
wm.13$dm.app[wm.13$dm.att == 4] <- 1
wm.13$dm.str.appr[wm.13$dm.att == 5] <- 1

wm.13$dm.str.dis[is.na(wm.13$dm.att)] <- NA
wm.13$dm.dis[is.na(wm.13$dm.att)] <- NA
wm.13$dm.sw.dis[is.na(wm.13$dm.att)] <- NA
wm.13$dm.sw.app[is.na(wm.13$dm.att)] <- NA
wm.13$dm.app[is.na(wm.13$dm.att)] <- NA
wm.13$dm.str.appr[is.na(wm.13$dm.att)] <- NA

table(wm.13$dm.str.dis, useNA = "always")
table(wm.13$dm.dis, useNA = "always")
table(wm.13$dm.sw.dis, useNA = "always")
table(wm.13$dm.sw.app, useNA = "always")
table(wm.13$dm.app, useNA = "always")
table(wm.13$dm.str.appr, useNA = "always")

# Attitude towards domestic violence long format
wm.13$att.dom.viol <- 0
wm.13$att.dom.viol[wm.13$dm.str.dis == 1] <- 1
wm.13$att.dom.viol[wm.13$dm.dis == 1] <- 2
wm.13$att.dom.viol[wm.13$dm.sw.dis == 1] <- 3
wm.13$att.dom.viol[wm.13$dm.sw.app == 1] <- 4
wm.13$att.dom.viol[wm.13$dm.app == 1] <- 5
wm.13$att.dom.viol[wm.13$dm.str.appr == 1] <- 6
wm.13$att.dom.viol[is.na(wm.13$dm.str.dis)] <- NA
table(wm.13$att.dom.viol, useNA = "ifany")

# Marital status
unique(wm.13$MA1)
wm.13$married <- 0
wm.13$living.w.man <- 0
wm.13$not.in.union <- 0

wm.13$married[wm.13$MA1 == 1] <- 1
wm.13$living.w.man[wm.13$MA1 == 2] <- 1
wm.13$not.in.union[wm.13$MA1 == 3] <- 1

wm.13$married[wm.13$MA1 == 9] <- NA
wm.13$living.w.man[wm.13$MA1 == 9] <- NA
wm.13$not.in.union[wm.13$MA1 == 9] <- NA

wm.13$married[is.na(wm.13$MA1)] <- NA
wm.13$living.w.man[is.na(wm.13$MA1)] <- NA
wm.13$not.in.union[is.na(wm.13$MA1)] <- NA

wm.13$married.or.in.union <- 0
wm.13$married.or.in.union[wm.13$married == 1 ] <- 1
wm.13$married.or.in.union[wm.13$living.w.man == 1 ] <- 1
wm.13$married.or.in.union[is.na(wm.13$married)] <- NA
wm.13$married.or.in.union[is.na(wm.13$living.w.man)] <- NA

table(wm.13$married, useNA = "always")
table(wm.13$living.w.man, useNA = "always")
table(wm.13$not.in.union, useNA = "always")
table(wm.13$married.or.in.union, useNA = "always")

# Age of the partner
sort(unique(wm.13$MA2), na.last = FALSE)
wm.13$age.husb <- wm.13$MA2
wm.13$age.husb[wm.13$MA2 == 98] <- NA
wm.13$age.husb[wm.13$MA2 == 99] <- NA
# head(table(wm.13$MA2, wm.13$age.husb, useNA = "always"))

# Age difference between spouses/partners - Continuous variable
wm.13$age.diff <- wm.13$MA2 - wm.13$WB2

# Age difference between spouses/partners - Binary variable
age.diff.threshold <- median(wm.13$MA2, na.rm = TRUE) - median(wm.13$WB2, na.rm = TRUE)
wm.13$age.diff.cat <- wm.13$age.diff
wm.13$age.diff.cat[wm.13$age.diff >= age.diff.threshold] <- 1
wm.13$age.diff.cat[wm.13$age.diff < age.diff.threshold] <- 0
table(wm.13$age.diff.cat, useNA = "always")
remove(age.diff.threshold)

# Poligamy of partner
sort(unique(wm.13$MA3), na.last = FALSE)
wm.13$poligamy <- wm.13$MA3
wm.13$poligamy[wm.13$MA3 == 2] <- 0
wm.13$poligamy[wm.13$MA3 == 8] <- NA
wm.13$poligamy[wm.13$MA3 == 9] <- NA
wm.13$poligamy[is.na(wm.13$MA3)] <- NA
table(wm.13$MA3, wm.13$poligamy, useNA = "always")

# Marital status 2
unique(wm.13$MA6)
wm.13$widowed <- 0
wm.13$divorced <- 0
wm.13$separated <- 0

wm.13$widowed[wm.13$MA6 == 1] <- 1
wm.13$divorced[wm.13$MA6 == 2] <- 1
wm.13$separated[wm.13$MA6 == 3] <- 1

wm.13$widowed[wm.13$MA6 == 9] <- NA
wm.13$divorced[wm.13$MA6 == 9] <- NA
wm.13$separated[wm.13$MA6 == 9] <- NA

wm.13$widowed[is.na(wm.13$MA6)] <- NA
wm.13$divorced[is.na(wm.13$MA6)] <- NA
wm.13$separated[is.na(wm.13$MA6)] <- NA

table(wm.13$widowed, useNA = "always")
table(wm.13$divorced, useNA = "always")
table(wm.13$separated, useNA = "always")

# Age of first union (declared)
sort(unique(wm.13$MA9), na.last = FALSE)
wm.13$MA9[wm.13$MA9 == 97] <- NA
wm.13$MA9[wm.13$MA9 == 98] <- NA
wm.13$MA9[wm.13$MA9 == 99] <- NA
sort(unique(wm.13$MA9), na.last = FALSE)

# Women aged 15-49 married or in union younger than 15 y.o. from computed age
wm.13$mar.uni.15.1 <- 0
wm.13$mar.uni.15.1[wm.13$age.first.union < 15] <- 1
wm.13$mar.uni.15.1[is.na(wm.13$age.first.union)] <- NA
table(wm.13$mar.uni.15.1, useNA = "always")

# Women aged 20-49 married or in union younger than 15 y.o. from computed age
wm.13$mar.uni.15.2 <- 0
wm.13$mar.uni.15.2[wm.13$age.first.union < 15 & wm.13$WB2 >= 20] <- 1
wm.13$mar.uni.15.2[is.na(wm.13$age.first.union)] <- NA
table(wm.13$mar.uni.15.2, useNA = "always")

# Women aged 20-49 married younger than 18 y.o. from computed age
wm.13$mar.uni.18 <- 0
wm.13$mar.uni.18[wm.13$age.first.union < 18 & wm.13$WB2 >= 20] <- 1
wm.13$mar.uni.18[is.na(wm.13$age.first.union)] <- NA
table(wm.13$mar.uni.18, useNA = "always")

# Time difference between FGM/C and marriage
td.wed.fgm <- wm.13$age.first.union - wm.13$age.fgm
wm.13 <- mutate(wm.13, td.wed.fgm)
sort(unique(wm.13$td.wed.fgm), na.last = FALSE)
remove(td.wed.fgm)

# Has ever had sex
wm.13$had.sex <- 0
wm.13$had.sex[wm.13$SB1 > 0 & wm.13$SB1 < 97] <- 1
wm.13$had.sex[wm.13$SB1 == 97] <- NA
wm.13$had.sex[wm.13$SB1 == 99] <- NA
wm.13$had.sex[is.na(wm.13$SB1)] <- NA
table(wm.13$had.sex, useNA = "always")

# Age at first sexual intercourse
wm.13$age.f.sex <- ifelse(wm.13$SB1 %in% c(0,97,99) | is.na(wm.13$SB1), NA, ifelse(wm.13$SB1 == 95, wm.13$MA9, wm.13$SB1))
sort(unique(wm.13$age.f.sex), na.last = FALSE)

# First sex happened with husband/partner
wm.13$f.sex.w.husb <- 0
wm.13$f.sex.w.husb[wm.13$SB1 == 95] <- 1
wm.13$f.sex.w.husb[wm.13$SB1 == 97] <- NA
wm.13$f.sex.w.husb[wm.13$SB1 == 99] <- NA
table(wm.13$f.sex.w.husb, useNA = "always")

# Condom used during the first sexual intercourse
sort(unique(wm.13$SB2), na.last = FALSE)
wm.13$condom.used <- wm.13$SB2
wm.13$condom.used[wm.13$SB2 == 2] <- 0
wm.13$condom.used[wm.13$SB2 == 8] <- NA
wm.13$condom.used[wm.13$SB2 == 9] <- NA
table(wm.13$SB2, wm.13$condom.used, useNA = "always")

# Wealth quintile
sort(unique(wm.13$windex5), na.last = FALSE)
wm.13$windex5[wm.13$windex5 == 0] <- NA
table(wm.13$windex5, useNA = "always")

# Save master
write.csv(wm.13, "Data_raw/wm_13.csv")

# Change names of native variables
wm.13 <- rename(wm.13, 
                clust.numb = HH1,
                hh.numb = HH2,
                wdob = WB1,
                wage = WB2,
                wagem = MA9,
                waged = CM2,
                wdow = MA8)

# Get variable names
str_c(colnames(wm.13), sep = " ", collapse = ", ")

# Save final .csv
wm.final <- select(wm.13, c("country", "clust.numb", "hh.numb", "area", "wdob", "wage", "age.group", "age1", "age2", "age3", "age4", "age5", "age6", "age7", "ever.attend", "schooling", "preschool", "primary", "secondary", "higher", "married", "living.w.man", "not.in.union", "married.or.in.union", "widowed", "divorced", "separated", "wdow",  "wagem", "age.first.union", "mar.uni.15.1", "mar.uni.15.2", "mar.uni.18", "age.husb", "age.diff", "age.diff.cat", "poligamy", "has.child", "waged", "age.first.deliv", "CEB", "CSURV", "CDEAD", "td.wed.child", "is.fgm", "age.fgm", "td.wed.fgm", "dm.str.dis", "dm.dis", "dm.sw.dis", "dm.sw.app", "dm.app", "dm.str.appr", "att.dom.viol", "had.sex", "age.f.sex", "f.sex.w.husb", "condom.used", "windex5", "wmweight"))

write.csv(wm.final, "Data/wm.csv")

# remove(list = ls())
