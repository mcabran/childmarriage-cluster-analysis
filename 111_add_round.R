# Add the variable "Country" to each individual tibble
library("tidyverse")
library(magrittr)

# Benin
round <- rep("MICS_5", nrow(wm.ben.a))
wm.ben.a <- mutate(wm.ben.a, round)
wm.ben.a <- wm.ben.a %>%
  select(round, everything())

# Cameroon
round <- rep("MICS_5", nrow(wm.cam.a))
wm.cam.a <- mutate(wm.cam.a, round)
wm.cam.a <- wm.cam.a %>%
  select(round, everything())

# Central African Republic
round <- rep("MICS_4", nrow(wm.car.a))
wm.car.a <- mutate(wm.car.a, round)
wm.car.a <- wm.car.a %>%
  select(round, everything())

# Chad
round <- rep("MICS_4", nrow(wm.cha.a))
wm.cha.a <- mutate(wm.cha.a, round)
wm.cha.a <- wm.cha.a %>%
  select(round, everything())

# Democratic Republic of the Congo
round <- rep("MICS_4", nrow(wm.drc.a))
wm.drc.a <- mutate(wm.drc.a, round)
wm.drc.a <- wm.drc.a %>%
  select(round, everything())

# Ghana
round <- rep("MICS_4", nrow(wm.gha.a))
wm.gha.a <- mutate(wm.gha.a, round)
wm.gha.a <- wm.gha.a %>%
  select(round, everything())

# Guinea Bissau
round <- rep("MICS_5", nrow(wm.gub.a))
wm.gub.a <- mutate(wm.gub.a, round)
wm.gub.a <- wm.gub.a %>%
  select(round, everything())

# Mali
round <- rep("MICS_5", nrow(wm.mal.a))
wm.mal.a <- mutate(wm.mal.a, round)
wm.mal.a <- wm.mal.a %>%
  select(round, everything())

# Mauritania
round <- rep("MICS_4", nrow(wm.mau.a))
wm.mau.a <- mutate(wm.mau.a, round)
wm.mau.a <- wm.mau.a %>%
  select(round, everything())

# Nigeria
round <- rep("MICS_5", nrow(wm.nia.a))
wm.nia.a <- mutate(wm.nia.a, round)
wm.nia.a <- wm.nia.a %>%
  select(round, everything())

# Sierra Leone
round <- rep("MICS_4", nrow(wm.sle.a))
wm.sle.a <- mutate(wm.sle.a, round)
wm.sle.a <- wm.sle.a %>%
  select(round, everything())

# São Tomé and Príncipe
round <- rep("MICS_5", nrow(wm.stp.a))
wm.stp.a <- mutate(wm.stp.a, round)
wm.stp.a <- wm.stp.a %>%
  select(round, everything())

# Togo
round <- rep("MICS_4", nrow(wm.tog.a))
wm.tog.a <- mutate(wm.tog.a, round)
wm.tog.a <- wm.tog.a %>%
  select(round, everything())

# Remove rounds
remove(round)
