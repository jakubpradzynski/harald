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

