library(googlesheets4)
library(googledrive)

Correo_electronico <- "dguerrero@oefa.gob.pe"
drive_auth(email = Correo_electronico)
gs4_auth(token = drive_token())

Base_Reporta_Residuos <- "https://docs.google.com/spreadsheets/d/1VKi4Wcsx8KNcydRT-YiZqFU82am8LH1Y8a2pIP2u_Vs/edit#gid=1523226724"
rr <- read_sheet(Base_Reporta_Residuos, sheet = "RR")

write.csv(rr, file="rr.csv")
