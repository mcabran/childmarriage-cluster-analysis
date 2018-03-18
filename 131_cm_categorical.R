library(tidyverse)

wm.13 <- read_csv("Data_raw/wm.13_with dates.csv")

wm.13 <- select(wm.13, -X1)

# Area
unique(wm.13$HH6)
wm.13$area <- wm.13$HH6
wm.13$area[wm.13$HH6 == 2] <- 0
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
unique(wm.13$FG7)
wm.13$age.fgm <- wm.13$FG7
wm.13$age.fgm[wm.13$FG7 == 98] <- NA
wm.13$age.fgm[wm.13$FG7 == 99] <- NA
wm.13$age.fgm[is.na(wm.13$FG7)] <- NA
table(wm.13$FG7, wm.13$age.fgm, useNA = "always")

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

table(wm.13$married, useNA = "always")
table(wm.13$living.w.man, useNA = "always")
table(wm.13$not.in.union, useNA = "always")

# Age of the partner
unique(wm.13$MA2)
wm.13$age.husb <- wm.13$MA2
wm.13$age.husb[wm.13$MA2 == 98] <- NA
wm.13$age.husb[wm.13$MA2 == 99] <- NA

table(wm.13$MA2, wm.13$age.husb, useNA = "always")

# Age difference debtween spouses/partners - Continuous variable
wm.13$age.diff <- wm.13$MA2 - wm.13$WB2

# Age difference debtween spouses/partners - Binary variable
age.diff.threshold <- median(wm.13$MA2, na.rm = TRUE) - median(wm.13$WB2, na.rm = TRUE)
wm.13$age.diff.cat <- wm.13$age.diff
wm.13$age.diff.cat[wm.13$age.diff >= age.diff.threshold] <- 1
wm.13$age.diff.cat[wm.13$age.diff < age.diff.threshold] <- 0
table(wm.13$age.diff.cat, useNA = "always")

# Poligamy of partner
unique(wm.13$MA3)
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

# Age at first sexual intercourse
wm.13$age.f.sex <- ifelse(wm.13$SB1 %in% c(0,97,99) | is.na(wm.13$SB1), NA, ifelse(wm.13$SB1 == 95, wm.13$MA9, wm.13$SB1))

 # wm.13$age.f.sex <- ifelse(wm.13$SB1 == 0 |wm.13$SB1 == 97 | wm.13$SB1 == 99  | is.na(wm.13$SB1), NA, ifelse(wm.13$SB1 == 95, wm.13$MA9, wm.13$SB1))

wm.13$age.f.sex <- wm.13$SB1
wm.13$age.f.sex <- ifelse(wm.13$SB1 == 95, wm.13$MA9, wm.13$SB1)
wm.13$age.f.sex[wm.13$SB1 == 0] <- NA
wm.13$age.f.sex[wm.13$SB1 == 97] <- NA
wm.13$age.f.sex[wm.13$SB1 == 99] <- NA
sort(unique(wm.13$age.f.sex), na.last = FALSE)




















