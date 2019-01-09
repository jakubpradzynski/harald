############################ Zadanie 1
# Liczba ocen niedostatecznych uzyskanych na egzaminie z pewnego przedmiotu
# przez jednakowo liczne grupy studenckie I roku Wydziału Matematyki i Informatyki
# pewnego uniwersytetu były następujące
# Na poziomie istotności 0,05 testem χ2
# zweryfikować hipotezę, że prawdopodobieństwa występowania ocen niedostatecznych w tych grupach są jednakowe.
liczb_ocen_nds = c(14, 18, 28, 12, 4, 22, 14, 16, 10, 8, 18, 6, 12)
table(liczb_ocen_nds)
chisq.test(table(liczb_ocen_nds))
# p-value wychodzi 0.9962 > 0.05, a wiec nie mamy podstaw do odrzucenia hipotezy zerowej




############################ Zadanie 2
# Wyznaczono liczby błędów przy korekcie 500 stronicowej książki. Wyniki opisujące liczbę błędów na kolejnych stronach 
# znajdują się w pliku bledy.txt. Na poziomie istotności 0,05 zweryfikuj hipotezę, że liczba błędów na stronicy ma 
# rozkład Poissona
bledy = read.table("bledy.txt", sep = " ")
l<-mean(bledy$x)
prob<-c()
for (i in 0:8) {
  prob[i+1]=dpois(i,l)
}
chisq.test(table(bledy$x), p = prob, rescale.p=T)
# p-value = 0.8189 - nie ma podstaw do odrzucenia hipotezy zerowej




############################ Zadanie 3
# Generator liczb losowych wygenerował 30 liczb z rozkładu wykładniczego E(2).
# Liczby są uporządkowane niemalejąco:
# Za pomocą testu Kołmogorowa na poziomie istotności 0,05 przetestuj zgodność tych
# danych z rozkładem E(2).
wylosowane = c(0.02, 0.03, 0.03, 0.04, 0.04, 0.05, 0.06, 0.11, 0.11, 0.16,
               0.18, 0.22, 0.24, 0.26, 0.27, 0.36, 0.44, 0.46, 0.46, 0.60,
               0.65, 0.65, 0.70, 0.80, 0.85, 0.90, 0.95, 1.20, 1.50, 2.00)
ks.test(wylosowane, "pexp", min(wylosowane), max(wylosowane))
# p-value = 2.2e-16 - odrzucamy hipotezę zerową




############################ Zadanie 4
# Wykonano 15 pomiarów czasu likwidowania zrywów na przędzarce obrączkowej, otrzymując (w s):
# Wykonując odpowiedni test zweryfikuj na poziomie istotności 0,05 hipotezę, że czas
# likwidacji zrywu ma rozkład N(6, 3; (1, 5)2).
probka=c(4.5, 3.6, 6.0, 6.4, 7.9, 6.9, 6.1, 7.4, 9.0, 4.3, 6.1, 8.2, 4.9, 7.5, 5.8)
probka = (probka - 6.3) / 1.5
shapiro.test(probka)
# p-value = 0.9572 - nie ma podstaw do odrzucenia hipotezy zerowej




############################ Zadanie 5
# Wczytaj do R plik zmienne.txt.
# a) Sprawdź, czy którekolwiek ze zmiennych zmienna1, zmienna2, zmienna3 mają
# te same rozkłady. Posłuż się odpowiednim testem oraz wykresami dystrybuant
# empirycznych dla wszystkich trzech próbek.
# b) Wykonując odpowiednie testy, spróbuj wyznaczyć konkretne rozkłady, z których pochodzą analizowane próbki.
dane=read.table("zmienne.txt", header = TRUE, sep=" ")
ks.test(dane$zmienna1, dane$zmienna2)
ks.test(dane$zmienna1, dane$zmienna3)
ks.test(dane$zmienna2, dane$zmienna3)
plot.ecdf(dane$zmienna1)
plot.ecdf(dane$zmienna2)
plot.ecdf(dane$zmienna3)
# Wszystkie testy mają małe p-value - odrzucamy hipotezę zerową - rozkłady nie są podobne
shapiro.test(dane$zmienna1)
shapiro.test(dane$zmienna2)
shapiro.test(dane$zmienna3)

ks.test(dane$zmienna1, "punif", min(dane$zmienna1), max(dane$zmienna1))
ks.test(dane$zmienna1, "pnorm", mean(dane$zmienna1))
ks.test(dane$zmienna1, "exp")

ks.test(dane$zmienna2, "punif", min(dane$zmienna2), max(dane$zmienna2))
ks.test(dane$zmienna2, "pnorm", mean(dane$zmienna2))
ks.test(dane$zmienna2, "exp")

ks.test(dane$zmienna3, "punif", min(dane$zmienna3), max(dane$zmienna3))
ks.test(dane$zmienna3, "pnorm", mean(dane$zmienna3))
ks.test(dane$zmienna3, "exp")

