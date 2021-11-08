library(plyr)

ruta_csv <- "C:\\Users\\Jorge\\Desktop\\Rstudio Workspace\\Estadística Avanzada\\Actividad 1\\train3.csv"
seguros <- read.csv(ruta_csv, sep=";",na.strings="NA")

rename(seguros, c(InitialIncurredCalimsCost = "InitCost", UltimateIncurredClaimCost = "UltCost", HoursWorkedPerWeek = "HoursWeek", DaysWorkedPerWeek = "DaysWeek"))

seguros$MaritalStatus[seguros$MaritalStatus == "married"] <- "M"
seguros$MaritalStatus[seguros$MaritalStatus == "m"] <- "M"
seguros$MaritalStatus[seguros$MaritalStatus == "single"] <- "S"
seguros$MaritalStatus[seguros$MaritalStatus == "s"] <- "S"
seguros$MaritalStatus[seguros$MaritalStatus == "unknown"] <- "U"
seguros$MaritalStatus[seguros$MaritalStatus == "u"] <- "U"
seguros$MaritalStatus[seguros$MaritalStatus == "divorced"] <- "D"
seguros$MaritalStatus[seguros$MaritalStatus == "d"] <- "D"
seguros$MaritalStatus[seguros$MaritalStatus == "widowed"] <- "W"
seguros$MaritalStatus[seguros$MaritalStatus == "w"] <- "W"
seguros$MaritalStatus[seguros$MaritalStatus == ""] <- "U"

levels(factor(seguros$MaritalStatus))


seguros$Gender[seguros$Gender == "f"] <- "F"
seguros$Gender[seguros$Gender == "m"] <- "M"
seguros$Gender[seguros$Gender == "Fm"] <- "U"

levels(factor(seguros$Gender))

replace(seguros$IniCost, ",", ".")
replace(seguros$UltCost, ",", ".")
