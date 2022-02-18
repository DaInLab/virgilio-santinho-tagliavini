library(xlsx)

setwd("C:\\Users\\virgi\\OneDrive\\Documentos\\Unesp\\IEAD2021\\topico_7\\virgilio-santinho-tagliavini")

data = read.xlsx(".\\dados\\Tabela_exercicio_3.xlsx", encoding="UTF-8", sheetName="Planilha1")

aux = sum(data$famílias)/2
ex3_median = 0
while (aux > 0) {
  ex3_median = ex3_median+1
  aux = aux-data$famílias[i]
}
ex3_mode = which.max(data$famílias)

plot(c(1:6), data$famílias, type="o", ann=TRUE, main="Exercício 3", xlab="Número de filhos", ylab="Famílias")
abline(v=2, col="red")
abline(v=ex3_mode, col="blue")
