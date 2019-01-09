############# Zad. R.1
# Na podstawie tych danych, na poziomie istotności α = 0,1, przetestuj hipotezę,
# że średnia liczba sprzedawanych biletów w niedziele jest równa 3, 2 tys. przeciw
# hipotezie, że średnia sprzedawanych biletów jest
# (a) mniejsza niż 3, 2 tys.,
# (b) różna od 3, 2 tys.,
# jeżeli wiadomo, że liczba sprzedawanych biletów ma rozkład normalny.

x = c(2.9, 3.3, 3.2, 3.2, 3.2, 3.0, 2.9, 3.1)
n = length(x)
T = sqrt(n) * (mean(x)-3.2)/sd(x)

# (a)
t.test(x, mu=3.2, alternative="l", conf.level = 0.1)
# p-wartosc jest rowna 0.05178, a odrzucamy hipotezę zerową

# (b)
t.test(x, mu=3.2, conf.level = 0.1)
# p-wartosc jest rowna 0.1036, a więc nie mamy podstaw odrzucić hipotezy zerowej

############# Zad. R.2
# Na pudełkach zapałek jest napisane „średnio 64 zapałki”. W pliku zapalki.txt
# znajdują się dane dotyczące ilości zapałek w 1000 wylosowanych pudełkach. 
# Na podstawie tych danych zweryfikuj na poziomie istotności α = 0, 05 hipotezę H0 : µ = 64
# wobec hipotezy alternatywnej H1 : µ > 64.

zapalki = read.table("zapalki.txt", header = TRUE, sep = " ")
x = unlist(zapalki, use.names = FALSE)
n = length(x)
T = sqrt(n) * (mean(x)-64)/sd(x)

t.test(x, mu=64, alternative="g")
# p-value < 2.2e-16 => odrzucamy hipoteze zerowa

############# Zad. R.3
# Producent płatków mydlanych wysunął hipotezę, że stopień wyprania tkaniny
# wełnianej płatkami mydlanymi jest wyższy od stopnia wyprania płynem do prania.
# W celu sprawdzenia tej hipotezy wykonano pomiary stopnia wyprania 10 wycinków
# tkaniny pranej płatkami, otrzymując w procentach wyniki 74, 4; 75, 1; 73, 0; 72, 8;
# 76, 2; 74, 6; 76, 0; 73, 4; 72, 9; 71, 6, oraz 7 wycinków pranych płynem do prania,
# otrzymując 56, 8; 57, 8; 54, 6; 59, 0; 57, 1; 58, 2; 57, 6. 
# Zakładając, że stopień wyprania tkaniny ma rozkład normalny i wiedząc, że test równości wariancji wykonany
# dla powyższych próbek nie pozwolił na odrzucenie hipotezy zerowej, na poziomie
# istotności α = 0,05 zweryfikuj hipotezę wysunietą przez producenta.

x1 = c(74.4, 75.1, 73.0, 72.8, 76.2, 74.6, 76.0, 73.4, 72.9, 71.6)
x2 = c(56.8, 57.8, 54.6, 59.0, 57.1, 58.2, 57.6)

t.test(x1, x2, alternative="g")
# p-value = 1 => nie mamy podstaw odrzucic hipotezy zerowej


############# Zad. R.4
# Średnie prędkości tramwaju (w km/h) obliczone dla zmierzonych w środę prędkości 200 tramwajów oraz 
# dla 120 tramwajów w niedzielę znajdują się w plikach
# tramwaje sroda.txt oraz tramwaje niedziela.txt. Na podstawie dostępnych danych zweryfikuj 
# na poziomie istotności α = 0,05 hipotezę, że średnia prędkość tramwajów w środę jest mniejsza niż w niedzielę.

sroda = read.table("tramwaje_sroda.txt", header = TRUE, sep = " ")
niedziela = read.table("tramwaje_niedziela.txt", header = TRUE, sep = " ")
x1 = unlist(sroda, use.names = FALSE)
x2 = unlist(niedziela, use.names = FALSE)
t.test(x1, x2, alternative = "l")
# p-value < 2.2e-16 => srednia predkosc tramwajow w srode jest mniejsza, odrzucamy hipoteze zerowa


############# Zad. R.5
# Zmierzono ciśnienie tętnicze wśród losowo wybranej grupy chorych na pewną
# chorobę przed i po podaniu takiego samego leku każdemu z badanych pacjentów.
# Otrzymano następujące wyniki:
#  Nr pacjenta 1 2 3 4 5 6 7 8
# Ciśnienie przed 210 180 260 270 190 250 180 200
# Ciśnienie po 180 160 220 260 200 230 180 190
# Na poziomie istotności α = 0, 05 zweryfikuj hipotezę, że stosowany lek nie powoduje
# zmiany ciśnienia u pacjentów, wobec hipotezy alternatywnej, że wartość przeciętna
# ciśnienia przed podaniem leku jest wyższa niż po jego podaniu, wiedząc, że ciśnienie
# tętnicze ma rozkład normalny.

x1 = c(210, 180, 260, 270, 190, 250, 180, 200)
x2 = c(180, 160, 220, 260, 200, 230, 180, 190)
t.test(x1, x2, paired=TRUE, alternative = "g")
# p-value = 0.01657 - odrzucamy hipoteze zerowa - powoduje zmiane cisnienia

############# Zad. R.6
# W czasie sondażu przeprowadzonego przez pracownię badania opinii społecznej 
# spośród 1100 ankietowanych dorosłych Polaków 1090 odpowiedziało, że w ubiegłym miesiącu nie przeczytali żadnej książki,
# a pozostali potwierdzili, że przeczytali
# przynajmniej jedna książkę. Dane zawierające odpowiedzi na postawione pytanie
# znajdują się w pliku sondaz.txt. Na ich podstawie, na poziomie istotności 0, 01,
# przetestuj hipotezę, że odsetek dorosłych Polaków, którzy nie przeczytali 
# w ubiegłym miesiącu żadnej książki wynosi 99%, przeciw hipotezie, że odsetek ten jest
# inny.

sondaz = read.table("sondaz.txt", header = TRUE, sep = " ")
x1 = unlist(sroda, use.names = FALSE)
t.test(x1, mu=0.99, conf.level = 0.01)
# p-value < 2.2e-16 => nie mamy podstaw odrzucic hipotezy zerowej
