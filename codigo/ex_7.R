library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

data7 = read.xlsx(".\\dados\\exercicio7.xls", encoding="UTF-8", sheetName="Plan1")

plot(data7$Atendimento, main="Exercício 7", xlab="Áreas", ylab="Atendimento")
mtext("[Pronto-Socorro, Pediatria, Psicologia, Neurologia, Ginecologia] = [1, 2, 3, 4, 5]", side=1, line=4)
