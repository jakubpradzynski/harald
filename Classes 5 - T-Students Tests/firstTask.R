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
