setwd("C:\\Users\\Nikola\\Desktop\\Faks\\Projekti\\VjerojatnostP")
df <- read.csv(file="BS_TU11.csv", header=TRUE, sep=",")
#View(df)
year1 <- df$X2006
year2 <- df$X2007
year3 <- df$X2008
mjeseci <-df$Mjesec
#View(mjeseci)
barplot(year1, names.arg = mjeseci,xlab = "Mjeseci", ylab="Nocenja",main="Nocenja stranih turista za 2006 godinu",col="red")
barplot(year2, names.arg = mjeseci,xlab = "Mjeseci", ylab="Nocenja",main="Nocenja stranih turista za 2007 godinu",col="red")
barplot(year3, names.arg = mjeseci,xlab = "Mjeseci", ylab="Nocenja",main="Nocenja stranih turista za 2008 godinu",col="red")

#Aritmeticka sredina i standarna devijacija
print(paste("Prosjecno nocenje stranih turista u 2006 godini za navedene sektore iznosila je",mean(year1),"+-",sd(year1)))
print(paste("Prosjecno nocenje stranih turista u 2007 godini za navedene sektore iznosila je",mean(year2),"+-",sd(year2)))
print(paste("Prosjecno nocenje stranih turista u 2008 godini za navedene sektore iznosila je",mean(year3),"+-",sd(year3)))


#Medijan
print(paste("Medijan za 2006 godinu iznosi: ",median(year1)))
print(paste("Medijan za 2007 godinu iznosi: ",median(year2)))
print(paste("Medijan za 2008 godinu iznosi: ",median(year3)))

#Donji kvartil
print(paste("Donji kvartil za 2006 godinu iznosi: ",quantile(year1,0.25)))
print(paste("Donji kvartil za 2007 godinu iznosi: ",quantile(year2,0.25)))
print(paste("Donji kvartil za 2008 godinu iznosi: ",quantile(year3,0.25)))

#Gornji kvartil
print(paste("Gornji kvartil za 2006 godinu iznosi: ",quantile(year1,0.75)))
print(paste("Gornji kvartil za 2007 godinu iznosi: ",quantile(year2,0.75)))
print(paste("Gornji kvartil za 2008 godinu iznosi: ",quantile(year3,0.75)))

#Interkvartil
print(paste("Interkvartil za 2006 godinu iznosi: ",IQR(year1)))
print(paste("Interkvartil za 2007 godinu iznosi: ",IQR(year2)))
print(paste("Interkvartil za 2008 godinu iznosi: ",IQR(year3)))

library(moments)

#Mjera asimetrije
print(paste("Mjera asimetrije za 2006 godinu iznosi: ",skewness(year1)))
print(paste("Mjera asimetrije za 2007 godinu iznosi: ",skewness(year2)))
print(paste("Mjera asimetrije za 2008 godinu iznosi: ",skewness(year3)))

#Zaobljenost
print(paste("Zaobljenost za 2006 godinu iznosi: ",kurtosis(year1)))
print(paste("Zaobljenost za 2007 godinu iznosi: ",kurtosis(year2)))
print(paste("Zaobljenost za 2008 godinu iznosi: ",kurtosis(year3)))

#Spearan
print(paste("Spearnom koeficijent nocenja stranih turista za 2006 i 2007: ",cor(year1,year2,method="spearman")))
print(paste("Spearnom koeficijent nocenja stranih turista za 2006 i 2008:",cor(year1,year3,method="spearman")))
print(paste("Spearnom koeficijent nocenja stranih turista za 2007 i 2008:",cor(year2,year3,method="spearman")))

#Pearsonov
print(paste("Pearsonov koeficijent nocenja stranih turista za 2006 i 2007:",cor(year1,year2,method="pearson")))
print(paste("Pearsonov koeficijent nocenja stranih turista za 2006 i 2008:",cor(year1,year3,method="pearson")))
print(paste("Pearsonov koeficijent nocenja stranih turista za 2007 i 2008:",cor(year2,year3,method="pearson")))


