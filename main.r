setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
file <- read.csv(file = "RE11.csv", header=TRUE, sep=",")
year1 <- file$X2008
year2 <- file$X2012
year3 <- file$X2016
year4 <- file$X2019
emisije <- file$EMISIJE

plotWidth <- 2440
plotHeight <- 1080

#Save plots to .PNG
dir.create("png", showWarnings = FALSE)

png(file="png/plot1.png", plotWidth, plotHeight)
barplot(year1, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2008 godinu",col="green")
dev.off()

png(file="png/plot2.png", plotWidth, plotHeight)
barplot(year2, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2012 godinu",col="green")
dev.off()

png(file="png/plot3.png", plotWidth, plotHeight)
barplot(year3, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2016 godinu",col="green")
dev.off()

png(file="png/plot4.png", plotWidth, plotHeight)
barplot(year3, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2019 godinu",col="green")
dev.off()

#Save plots to .JPG
dir.create("jpg", showWarnings = FALSE)

jpeg(file="jpg/plot1.jpg", plotWidth, plotHeight)
barplot(year1, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2008 godinu",col="green")
dev.off()

jpeg(file="jpg/plot2.jpg", plotWidth, plotHeight)
barplot(year2, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2012 godinu",col="green")
dev.off()

jpeg(file="jpg/plot3.jpg", plotWidth, plotHeight)
barplot(year3, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2016 godinu",col="green")
dev.off()

jpeg(file="jpg/plot4.jpg", plotWidth, plotHeight)
barplot(year3, names.arg = emisije,xlab = "Emisije", ylab="Količina",main="Racuni svih vrsta emisija u zraku za 2019 godinu",col="green")
dev.off()

#Aritmeticka sredina i standarna devijacija
print(paste("Prosjecni racun emisija u zraku 2008. godine za sve navedene vrste iznosila je",mean(year1),"+-",sd(year1)))
print(paste("Prosjecni racun emisija u zraku 2012. godine za sve navedene vrste iznosila je",mean(year2),"+-",sd(year2)))
print(paste("Prosjecni racun emisija u zraku 2016. godine za sve navedene vrste iznosila je",mean(year3),"+-",sd(year3)))
print(paste("Prosjecni racun emisija u zraku 2019. godine za sve navedene vrste iznosila je",mean(year4),"+-",sd(year4)))

#Medijan
print(paste("Medijan za 2008 godinu iznosi: ",median(year1)))
print(paste("Medijan za 2012 godinu iznosi: ",median(year2)))
print(paste("Medijan za 2016 godinu iznosi: ",median(year3)))
print(paste("Medijan za 2019 godinu iznosi: ",median(year4)))

#Donji kvartil
print(paste("Donji kvartil za 2008 godinu iznosi: ",quantile(year1,0.25)))
print(paste("Donji kvartil za 2012 godinu iznosi: ",quantile(year2,0.25)))
print(paste("Donji kvartil za 2016 godinu iznosi: ",quantile(year3,0.25)))
print(paste("Donji kvartil za 2019 godinu iznosi: ",quantile(year4,0.25)))

#Gornji kvartil
print(paste("Gornji kvartil za 2008 godinu iznosi: ",quantile(year1,0.75)))
print(paste("Gornji kvartil za 2012 godinu iznosi: ",quantile(year2,0.75)))
print(paste("Gornji kvartil za 2016 godinu iznosi: ",quantile(year3,0.75)))
print(paste("Gornji kvartil za 2019 godinu iznosi: ",quantile(year4,0.75)))

#Interkvartil
print(paste("Interkvartil za 2008 godinu iznosi: ",IQR(year1)))
print(paste("Interkvartil za 2012 godinu iznosi: ",IQR(year2)))
print(paste("Interkvartil za 2016 godinu iznosi: ",IQR(year3)))
print(paste("Interkvartil za 2019 godinu iznosi: ",IQR(year4)))

library("moments")

#Mjera asimetrije
print(paste("Mjera asimetrije za 2008 godinu iznosi: ",skewness(year1)))
print(paste("Mjera asimetrije za 2012 godinu iznosi: ",skewness(year2)))
print(paste("Mjera asimetrije za 2016 godinu iznosi: ",skewness(year3)))
print(paste("Mjera asimetrije za 2019 godinu iznosi: ",skewness(year4)))

#Zaobljenost
print(paste("Zaobljenost za 2008 godinu iznosi: ",kurtosis(year1)))
print(paste("Zaobljenost za 2012 godinu iznosi: ",kurtosis(year2)))
print(paste("Zaobljenost za 2016 godinu iznosi: ",kurtosis(year3)))
print(paste("Zaobljenost za 2019 godinu iznosi: ",kurtosis(year4)))

#Spearan
print(paste("Spearnom koeficijent svih emisija za 2008 i 2012 iznosi:",cor(year1,year2,method="spearman")))
print(paste("Spearnom koeficijent svih emisija za 2008 i 2016 iznosi:",cor(year1,year3,method="spearman")))
print(paste("Spearnom koeficijent svih emisija za 2012 i 2016 iznosi:",cor(year2,year3,method="spearman")))
print(paste("Spearnom koeficijent svih emisija za 2016 i 2019 iznosi:",cor(year3,year4,method="spearman")))

#Pearsonov
print(paste("Pearsonov koeficijent svih emisija za 2008 i 2012:",cor(year1,year2,method="pearson")))
print(paste("Pearsonov koeficijent svih emisija za 2008 i 2016:",cor(year1,year3,method="pearson")))
print(paste("Pearsonov koeficijent svih emisija za 2012 i 2016:",cor(year2,year3,method="pearson")))
print(paste("Pearsonov koeficijent svih emisija za 2016 i 2019:",cor(year3,year4,method="pearson")))


