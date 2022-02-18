library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

dados = read.xlsx(".\\dados\\exercicio1.xls", encoding="UTF-8", sheetName="Plan1")

juros = dados$Taxas.de.juros

jmean = mean(juros)
jmedian = median(juros)
jstd_deviation = sd(juros)
jvariance = var(juros)
jquartiles = quantile(juros)

plot(c(1:length(juros)), sort(juros), type="o", main="Juros", xlab="Ação", ylab = "Juros")
abline(h=jmean, col="blue")
mtext("Mean = 2.595", side=1, line=2, col="blue", adj=0)
abline(h=jmedian, col="red")
mtext("Median = 2.605", side=1, line=3, col="red", adj=0)
mtext("Standard deviation = 0.445", side=1, line=2, col="gray0", adj=1)
mtext("Variance = 0.002", side=1, line=3, col="gray0", adj=1)

boxplot(jquartiles, main="Quartiz")
