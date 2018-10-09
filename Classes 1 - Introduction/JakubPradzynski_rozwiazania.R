# ZADANIE 1

# Wczytanie poprawionego pliku Roczniaki w formacie CSV
roczniaki = read.csv(file = "Roczniaki - poprawione.csv", header = TRUE, sep = ",", dec = ",");
# Wyświetlenie pierwszych 6 wierszy z ramki
head(roczniaki, 6);
# Wyświetlenie tylko kolumny, w której jest waga dziecka
print(roczniaki[3]);
# Obliczenie BMI dla każdej obserwacji i zapisanie w ramce jako nowa kolumna
roczniaki$BMI = (roczniaki[3] / (roczniaki[2] * roczniaki[2]));
# Sortowanie ramki dla kolumny z BMI nierosnąco
roczniaki = roczniaki[order(roczniaki[4], decreasing = TRUE),]



# ZADANIE 2

# Instalowanie pakietu foreign
library(foreign);
# Wczytanie pliku Employee data.spss do ramki z kodowaniem polskich znakóW
employee = read.spss(file = "Employee data.sav", to.data.frame = TRUE, reencode = TRUE);
# Nazwy zmiennych
names(employee);
# Utworzenie zmiennej poziom_zarobkow
get_value <- function(salary) {
  return(as.numeric(as.character(salary)));d
}
poziom_zarobkow <- function(salary) {
  salary_length = length(salary);
  result <- vector(mode="character", length=salary_length)
  for (i in 1:salary_length) {
    if (isTRUE(get_value(salary[i]) > 0 & get_value(salary[i]) <= 25000)) result[i] <- "niskie";
    if (isTRUE(get_value(salary[i]) > 25000 & get_value(salary[i]) <= 35000)) result[i] <- "przecietne";
    if (isTRUE(get_value(salary[i]) > 35000)) result[i] <- "wysokie";
  }
  return(result)
};
employee$"poziom_zarobkow" = poziom_zarobkow(employee$salary);

# Liczba obserwacji w poszczególnych grupach zdefiniowanych przez zmienną "poziom_zarobków"
install.packages("plyr");
library(plyr);
print(count(employee, "poziom_zarobkow"));

# Zapisanie zmiennej "poziom_zarobkow" w pliku zarobki.txt
write.table(employee$"poziom_zarobkow", file = "zarobki.txt")



# ZADANIE 3

# Funkcja na k-ty moment centralny wektora
moment_centralny <- function(x, k) {
  result <- 0;
  n <- length(x);
  mean <- mean(x);
  for (i in 1:n) {
    print(x[i]);
    result <- result + ((x[i] - mean)^k);
  }
  result <- result * (1/n);
  return(result);
}

print(moment_centralny(c(11, 2, 3, 4, 25), 3));




