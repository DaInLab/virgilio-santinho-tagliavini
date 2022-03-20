library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

#data = read.xlsx(".\\dados\\exercicio2.xls", encoding="UTF-8", sheetName="Plan1")
data = read.xlsx("./dados/exercicio9.xls", encoding="UTF-8", sheetName="Plan1")

houses = data$Casas

#Tabela de frequencias
table(factor(houses))

#Medidas de posicao
mean = mean(houses)
median = median(houses)
mode = {function(data) {
  different = unique(houses)
  matches = match(houses, different)
  table = tabulate(matches)
  different[table == max(table)]
}}(houses)
quartiles = quantile(houses)

#Medidas de dispersao
amplitude = quartiles[[5]]-quartiles[[1]]
deviation = (function(houses){
  dev = c(length(houses))
  for (i in 1:length(houses)) {
    dev[i] = houses[i]-mean
  }
  dev
})(houses)
variance = var(houses)
standard_deviation = sd(houses)

#Contrucao de graficos

  #Medidas de posição
plot(c(1:50), houses, type="h", ann=FALSE)
title(main="Exercício 2 - Medidas de posição", xlab="Quarteirao", ylab="Casas")
abline(h=mean, col="blue")
mtext("Mean = 40.42", col="blue", side=1, line=2, adj=1)
abline(h=median, col="gray")
mtext("Median = 31", col="gray", side=1, line=3, adj=1)
abline(h=mode, col="yellow")
mtext("Mode = 61", col="yellow", side=1, line=4, adj=1)
mtext("Amplitude = 95", col="gray0", side=1, line=2, adj=0)
mtext("Variance = 680.003", col="gray0", side=1, line=3, adj=0)
mtext("Standard deviation = 26.076", col="gray0", side=1, line=4, adj=0)

  #Quartiz
boxplot(quartiles, main="Quartiz")

  #Deviation
plot(c(1:50), deviation, type="l", ann=FALSE)
title(main="Exercício 2 - Desvios", xlab="Quarteirão", ylab="Desvio")
abline(h=standard_deviation, col="blue")
abline(h=mean, col="red")
abline(h=0, col="gray0")
mtext("Standard deviation = 26.076", col="blue", side=1, line=2, adj=0)
mtext("Mean = 40.42", col="red", side=1, line=2, adj=1)

