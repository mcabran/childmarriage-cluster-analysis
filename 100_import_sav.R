# Start creating the dataframe by importing the wm modules from folder. wm modules are in SPSS format.
library("tidyverse")
library(haven)

# Benin
wm.ben.a <- read_sav("Data_raw/MICS datasets complete/Benin_MICS5_Datasets/Benin MICS 2014 SPSS Datasets/wm.sav")

# Cameroon
wm.cam.a <- read_sav("Data_raw/MICS datasets complete/Cameroon_MICS5_Datasets/Cameroon MICS 2014 SPSS Datasets/wm.sav")

# CAR
wm.car.a <- read_sav("Data_raw/MICS datasets complete/Central African Republic_MICS4_Datasets/Central African Republic MICS 2010 SPSS Datasets/wm.sav")

# Chad
wm.cha.a <- read_sav("Data_raw/MICS datasets complete/Chad_MICS4_Datasets/Chad MICS 2010 SPSS Datasets/wm.sav")

# DRC
wm.drc.a <- read_sav("Data_raw/MICS datasets complete/Democratic Republic of Congo_MICS4_Datasets/Democratic Republic of Congo MICS 2010 SPSS Datasets/wm.sav")

# Ghana
wm.gha.a <- read_sav("Data_raw/MICS datasets complete/Ghana_MICS4_Datasets/Ghana MICS 2011 SPSS Datasets/wm.sav")

# Guinea Bissau
wm.gub.a <- read_sav("Data_raw/MICS datasets complete/Guinea Bissau_MICS5_Datasets/Guinea Bissau MICS 2014 SPSS Datasets/wm.sav")

# Mali
wm.mal.a <- read_sav("Data_raw/MICS datasets complete/Mali_MICS5_Datasets/Mali MICS 2015 SPSS Datasets/wm.sav")

# Mauritania
wm.mau.a <- read_sav("Data_raw/MICS datasets complete/Mauritania_MICS4_Datasets/Mauritania MICS 2011 SPSS Datasets/wm.sav")

# Nigeria
wm.nia.a <- read_sav("Data_raw/MICS datasets complete/Nigeria MICS5 Datasets/Nigeria MICS 2016-17 SPSS Datasets/wm.sav")

# São Tomé and Príncipe
wm.stp.a <- read_sav("Data_raw/MICS datasets complete/Sao Tome and Principe_MICS5_Datasets/Sao Tome and Principe MICS 2014 SPSS Datasets/wm.sav")

# Sierra Leone
wm.sle.a <- read_sav("Data_raw/MICS datasets complete/Sierra Leone_MICS4_Datasets/Sierra Leone MICS 2010 SPSS Datasets/wm.sav")

# Togo
wm.tog.a <- read_sav("Data_raw/MICS datasets complete/Togo_MICS4_Datasets/Togo MICS 2010 SPSS Datasets/wm.sav")










