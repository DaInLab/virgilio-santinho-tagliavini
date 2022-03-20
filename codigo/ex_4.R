library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

#data4 = read.xlsx(".\\dados\\exercicio4.xls", encoding="UTF-8", sheetName="Plan1")
data4 = read.xlsx("./dados/exercicio4.xls", encoding="UTF-8", sheetName="Plan1")

data4 = sort(data4$Salários)

hist(data4, main="Exercício 4 - Distribuição de frequências", col="blue", xlab="Intervals")
