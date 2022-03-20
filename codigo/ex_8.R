library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

#data8 = read.xlsx(".\\dados\\exercicio8.xls", encoding="UTF-8", sheetName="Plan1")
data8 = read.xlsx("./dados/exercicio8.xls", encoding="UTF-8", sheetName="Plan1")

data8 = c(data8$Altura.dos.pacientes, data8$NA., data8$NA., data8$NA..1, data8$NA..2, data8$NA..3, data8$NA..4, data8$NA..5, data8$NA..6, data8$NA..7, data8$NA..8)

hist(data8, main="Exercício 8 - Distribuição de frequências", col="blue", xlab="Intervals")

