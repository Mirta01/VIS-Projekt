setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
emisije <- read.csv(file = "RE11.csv")
data1 <- emisije$X2008
data2 <- emisije$X2012
print(paste("Prosjecna neto placa u 2000 godini za navedene
sektore iznosila je",mean(data1),"+-",sd(data1)))
print(paste("Prosjecna neto placa u 2001 godini za navedene
sektore iznosila je",mean(data2),"+-",sd(data2)))