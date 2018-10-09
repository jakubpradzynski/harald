# Instalowanie pakietu foreign
library(foreign);
# Wczytanie pliku Employee data.spss do ramki z kodowaniem polskich znakóW
employee = read.spss(file = "Employee data.sav", to.data.frame = TRUE, reencode = TRUE);
# Nazwy zmiennych
names(employee);
# Utworzenie zmiennej poziom_zarobkow
get_value <- function(salary) {
  return(as.numeric(as.character(salary)));
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
