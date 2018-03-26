library(dplyr)

# Benin
wm.ben.b <- select(wm.ben.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Cameroon
wm.cam.b <- select(wm.cam.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Central African Republic
wm.car.b <- select(wm.car.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, WMWEIGHT)

# Chad
wm.cha.b <- select(wm.cha.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Democratic Republic of the Congo
wm.drc.b <- select(wm.drc.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Ghana
wm.gha.b <- select(wm.gha.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Guinea Bissau
wm.gub.b <- select(wm.gub.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Mali
wm.mal.b <- select(wm.mal.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Mauritania
wm.mau.b <- select(wm.mau.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, WB1M, WB1Y, WB2, WB3, WB4, wscore, WMWEIGHT)

# Nigeria
wm.nia.b <- select(wm.nia.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Sierra Leone
wm.sle.b <- select(wm.sle.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# São Tomé and Príncipe
wm.stp.b <- select(wm.stp.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, WMWEIGHT)

# Togo
wm.tog.b <- select(wm.tog.a, country, round, HH1, HH2, HH6, HH7, LN, CM1, CM2M, CM2Y, CEB, CSURV, CDEAD, DV1A, DV1B, DV1C, DV1D, DV1E, FG3, FG7, MA1, MA2, MA3, MA6, MA8M, MA8Y, MA9, SB1, SB2, WB1M, WB1Y, WB2, WB3, WB4, windex5, wscore, wmweight)

# Check number of observations
nrow(wm.ben.a) == nrow(wm.ben.b)
nrow(wm.cam.a) == nrow(wm.cam.b)
nrow(wm.car.a) == nrow(wm.car.b)
nrow(wm.drc.a) == nrow(wm.drc.b)
nrow(wm.gha.a) == nrow(wm.gha.b)
nrow(wm.gub.a) == nrow(wm.gub.b)
nrow(wm.mal.a) == nrow(wm.mal.b)
nrow(wm.mau.a) == nrow(wm.mau.b)
nrow(wm.nia.a) == nrow(wm.nia.b)
nrow(wm.sle.a) == nrow(wm.sle.b)
nrow(wm.stp.a) == nrow(wm.stp.b)
nrow(wm.tog.a) == nrow(wm.tog.b)

# Remove old tibbles
remove(wm.ben.a, wm.cam.a, wm.car.a, wm.cha.a, wm.drc.a, wm.gha.a, wm.gub.a, wm.mal.a, wm.mau.a, wm.nia.a, wm.sle.a, wm.stp.a, wm.tog.a)




