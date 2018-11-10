############################################# Zadanie 1
# Wczytanie danych do zmiennej lakeHuron
lakeHuron <- LakeHuron
lakeHuronLength <- length(LakeHuron)

# Szereg przedziełowy o równych długosciach przedziałów
breaks <- sort(seq(max(lakeHuron), min(lakeHuron)))
factor <- cut(lakeHuron, breaks)
distribution <- table(factor)
distribution

# Szereg przedziałowy 5 klas o (w przybliżeniu) równych liczebnościach
breaks2 = sort(quantile(lakeHuron, names = FALSE, probs = seq(0, 1, by = 0.20), include.lowest = TRUE))
factor2 <- cut(lakeHuron, breaks2)
distribution2 <- table(factor2)
distribution2

# Przedział w jakim znajduje się dominanta
modaBreak <- names(sort(distribution, decreasing = TRUE))[1]
modaBreak





############################################# Zadanie 2
# Wczytanie danych Indometh
indometh <- Indometh
conc <- indometh$conc

# Jaka jest wielkość próbki?
length(conc)

# Z jakiego przedziału przyjmuje wartości analizowana zmienna?
range(conc)

# Skomentuj wzajemne położenie średniej i mediany.
mean(conc)
median(conc)
### Średnia jest wyższa, a więc więc wartości znajduje się po lewej stronie wartości przeciętnej 

# Zbadaj symetrię próbki.
install.packages("moments")
library(moments)
skewness(conc)
### rozkład prawostronnie skośny, 

# Jaka jest średnia obcięta z 50% środkowych obserwacji?
concLength <- length(conc)
x <- c(conc[1:(concLength * 1/4)])
x2 <- c(conc[(concLength * 3/4):concLength+1])
result <- append(x, x2)
mean(result)

# Zbadaj koncentrację próbki.
kurtosis(conc)
### większa niż 3 a więc bardziej skoncentrowane

# Jaka jest długość przedziału, w którym znajduje się 50% środkowych obserwacji?
(concLength * 3/4) - (concLength * 1/4)

# Ile wynosi poziom stężenia indometacyny, poniżej którego znajduje się 30% obserwacji?
quantile(conc, probs = 0.30)

# Ile wynosi poziom stężenia indometacyny, powyżej którego znajduje się 20% obserwacji? 
quantile(conc, probs = 0.80)







############################################# Zadanie 3
# Wczytanie danych
# install.packages("moments")
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
