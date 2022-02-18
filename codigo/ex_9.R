library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

data9 = read.xlsx(".\\dados\\exercicio9.xls", encoding="UTF-8", sheetName="Plan1")

hist(data9$Salários, breaks=c(4:24), xlab="Salários", ylab="Frequencies", main="Exercício 9", xlim=c(4, 24))
