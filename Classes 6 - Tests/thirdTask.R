# Generator liczb losowych wygenerował 30 liczb z rozkładu wykładniczego E(2).
# Liczby są uporządkowane niemalejąco:
# Za pomocą testu Kołmogorowa na poziomie istotności 0,05 przetestuj zgodność tych
# danych z rozkładem E(2).
wylosowane = c(0.02, 0.03, 0.03, 0.04, 0.04, 0.05, 0.06, 0.11, 0.11, 0.16,
               0.18, 0.22, 0.24, 0.26, 0.27, 0.36, 0.44, 0.46, 0.46, 0.60,
               0.65, 0.65, 0.70, 0.80, 0.85, 0.90, 0.95, 1.20, 1.50, 2.00)
ks.test(wylosowane, "pexp", min(wylosowane), max(wylosowane))
# p-value = 2.2e-16 - odrzucamy hipotezę zerową