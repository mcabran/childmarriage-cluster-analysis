# Add the variable "Country" to each individual tibble
library("tidyverse")
library(magrittr)

# Benin
country <- rep("Benin", nrow(wm.ben.a))
wm.ben.a <- mutate(wm.ben.a, country)
wm.ben.a <- wm.ben.a %>%
  select(country, everything())

# Cameroon
country <- rep("Cameroon", nrow(wm.cam.a))
wm.cam.a <- mutate(wm.cam.a, country)
wm.cam.a <- wm.cam.a %>%
  select(country, everything())

# Central African Republic
country <- rep("CAR", nrow(wm.car.a))
wm.car.a <- mutate(wm.car.a, country)
wm.car.a <- wm.car.a %>%
  select(country, everything())

# Chad
country <- rep("Chad", nrow(wm.cha.a))
wm.cha.a <- mutate(wm.cha.a, country)
wm.cha.a <- wm.cha.a %>%
  select(country, everything())

# Democratic Republic of the Congo
country <- rep("DRC", nrow(wm.drc.a))
wm.drc.a <- mutate(wm.drc.a, country)
wm.drc.a <- wm.drc.a %>%
  select(country, everything())

# Ghana
country <- rep("Ghana", nrow(wm.gha.a))
wm.gha.a <- mutate(wm.gha.a, country)
wm.gha.a <- wm.gha.a %>%
  select(country, everything())

# Guinea Bissau
country <- rep("Guinea Bissau", nrow(wm.gub.a))
wm.gub.a <- mutate(wm.gub.a, country)
wm.gub.a <- wm.gub.a %>%
  select(country, everything())

# Mali
country <- rep("Mali", nrow(wm.mal.a))
wm.mal.a <- mutate(wm.mal.a, country)
wm.mal.a <- wm.mal.a %>%
  select(country, everything())

# Mauritania
country <- rep("Mauritania", nrow(wm.mau.a))
wm.mau.a <- mutate(wm.mau.a, country)
wm.mau.a <- wm.mau.a %>%
  select(country, everything())

# Nigeria
country <- rep("Nigeria", nrow(wm.nia.a))
wm.nia.a <- mutate(wm.nia.a, country)
wm.nia.a <- wm.nia.a %>%
  select(country, everything())

# Sierra Leone
country <- rep("Sierra Leone", nrow(wm.sle.a))
wm.sle.a <- mutate(wm.sle.a, country)
wm.sle.a <- wm.sle.a %>%
  select(country, everything())

# São Tomé and Príncipe
country <- rep("Sao Tome and Principe", nrow(wm.stp.a))
wm.stp.a <- mutate(wm.stp.a, country)
wm.stp.a <- wm.stp.a %>%
  select(country, everything())

# Togo
country <- rep("Togo", nrow(wm.tog.a))
wm.tog.a <- mutate(wm.tog.a, country)
wm.tog.a <- wm.tog.a %>%
  select(country, everything())

# Remove country.names
remove(country)









