library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

data5 = read.xlsx(".\\dados\\exercicio5.xls", encoding="UTF-8", sheetName="Plan1")

plot(x=c(1, 2, 3, 4, 5), y=data5$Nº.pessoas, type="s", xlab="Marcas", main="Exercício 5", ylab="N° de pessoas")
mtext("[A, B, C, D, E] = [1, 2, 3, 4, 5]", side=1, adj=0, line=2)
