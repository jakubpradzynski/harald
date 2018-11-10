# Wczytanie danych
install.packages("moments")
library(moments)
iris <- iris
summary(iris$Sepal.Length)
setosa <- "1"
versicolor <- "2"
virginica <- "3"


getSepalLengthForSpecies <- function(spec) {
  result = c()
  for (i in 1:nrow(iris)) {
    row <- iris[i,]
    if (as.character(row["Species"]) == spec) {
      result <- append(result, row$Sepal.Length)
    }
  }
  return(result)
}

printData <- function(species, data) {
  cat("Gatunek:", species, "\n")
  cat("Podsumowanie:\n")
  print(summary(data))
  cat(" Wariancja próbkowa:", var(data), "\n",
  "Odchylenie standardowe:", sd(data), "\n",
  "Rozstęp międzykwartylowy:", IQR(data), "\n",
  "Moment zwykły:", moment(data), "\n",
  "Skośność:", skewness(data), "\n",
  "Kurtoza:", kurtosis(data), "\n",
  "Przedział dominanty:", names(sort(table(cut(data, sqrt(length(data))))))[1], "\n")
  cat("Szereg punktowy:\n")
  print(table(data))
  cat("Szereg przedziałowy:\n")
  print(table(cut(data, sqrt(length(data)))))
}

print("TABELA KRZYŻOWA")
table(iris$Species, iris$Sepal.Length)

setosa.sepal.Length <- getSepalLengthForSpecies(setosa)
printData("SETOSA", setosa.sepal.Length)

versicolor.sepal.Length <- getSepalLengthForSpecies(versicolor)
printData("VERSICOLOR", versicolor.sepal.Length)

virginica.sepal.Length <- getSepalLengthForSpecies(virginica)
printData("VIRGINICA", virginica.sepal.Length)



