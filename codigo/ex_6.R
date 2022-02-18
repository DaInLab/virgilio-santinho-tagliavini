library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

data6 = read.xlsx(".\\dados\\exercicio6.xls", encoding="UTF-8", sheetName="Plan1")

d6 = -sort(-data6$Nº.pessoas)
plot(x=c(1, 2, 3, 4, 5), y=d6, type="h", main="Exercício 6 - Diagrama de Pareto", ylab="N° de pessoas", xlab="Opinião")
mtext("[Razoável, Ruim, Bom, Péssimo, Ótimo]=[3, 2, 4, 1, 5]", side=1, line=4)
