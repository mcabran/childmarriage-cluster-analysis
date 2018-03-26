library(tidyverse)
library(readr)

# Rename WMWEIGHT variable
wm.car.b <- rename(wm.car.b,
                   wmweight = WMWEIGHT)
wm.mau.b <- rename(wm.mau.b,
                   wmweight = WMWEIGHT)
wm.stp.b <- rename(wm.stp.b,
                   wmweight = WMWEIGHT)

# Merge the individual wm objects into a unique tibble

# Merge Benin and Cameroon
wm.2 <- merge(wm.ben.b, wm.cam.b, all = TRUE)

# Check the number of observations
nrow(wm.2) == nrow(wm.ben.b) + nrow(wm.cam.b)

# Add CAR
wm.3 <- merge(wm.2, wm.car.b, all = TRUE)

# Check the number of observations
nrow(wm.3) == nrow(wm.2) + nrow(wm.car.b)

# Add Chad
wm.4 <- merge(wm.3, wm.cha.b, all = TRUE)

# Check the number of observations
nrow(wm.4) == nrow(wm.3) + nrow(wm.cha.b)

# Add DRC
wm.5 <- merge(wm.4, wm.drc.b, all = TRUE)

# Check the number of observations
nrow(wm.5) == nrow(wm.4) + nrow(wm.drc.b)

# Add Ghana
wm.6 <- merge(wm.5, wm.gha.b, all = TRUE)

# Check the number of observations
nrow(wm.6) == nrow(wm.5) + nrow(wm.gha.b)

# Add Guinea Bissau
wm.7 <- merge(wm.6, wm.gub.b, all = TRUE)

# Check the number of observations
nrow(wm.7) == nrow(wm.6) + nrow(wm.gub.b)

# Add Mali
wm.8 <- merge(wm.7, wm.mal.b, all = TRUE)

# Check the number of observations
nrow(wm.8) == nrow(wm.7) + nrow(wm.mal.b)

# Add Mauritania
wm.9 <- merge(wm.8, wm.mau.b, all = TRUE)

# Check the number of observations
nrow(wm.9) == nrow(wm.8) + nrow(wm.mau.b)

# Add Nigeria
wm.10 <- merge(wm.9, wm.nia.b, all = TRUE)

# Check the number of observations
nrow(wm.10) == nrow(wm.9) + nrow(wm.nia.b)

# Add Sierra Leone
wm.11 <- merge(wm.10, wm.sle.b, all = TRUE)

# Check the number of observations
nrow(wm.11) == nrow(wm.10) + nrow(wm.sle.b)

# Add São Tomé and Príncipe
wm.12 <- merge(wm.11, wm.stp.b, all = TRUE)

# Check the number of observations
nrow(wm.12) == nrow(wm.11) + nrow(wm.stp.b)

# Add Togo
wm.13 <- merge(wm.12, wm.tog.b, all = TRUE)

# Check the number of observations
nrow(wm.13) == nrow(wm.12) + nrow(wm.tog.b)

# Final check on the number of observations
nrow(wm.13) == nrow(wm.ben.b) + nrow(wm.cam.b) + nrow(wm.car.b) + nrow(wm.cha.b) + nrow(wm.drc.b) + nrow(wm.gha.b) + nrow(wm.gub.b) + nrow(wm.mal.b) + nrow(wm.mau.b) + nrow(wm.nia.b) + nrow(wm.sle.b) + nrow(wm.stp.b) + nrow(wm.tog.b)


# Remove individual tibbles
remove(wm.ben.b, wm.cam.b, wm.car.b, wm.cha.b, wm.drc.b, wm.gha.b, wm.gub.b, wm.mal.b, wm.mau.b, wm.nia.b, wm.sle.b, wm.stp.b, wm.tog.b)


# Remove intermediary dataframes
remove(wm.2, wm.3, wm.4, wm.5, wm.6, wm.7, wm.8, wm.9, wm.10, wm.11, wm.12)

# Save the dataframe into a csv file
write_csv(wm.13, path = "Data_raw/wm_merged.csv")




