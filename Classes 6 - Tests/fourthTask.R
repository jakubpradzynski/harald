# Wykonano 15 pomiarów czasu likwidowania zrywów na przędzarce obrączkowej, otrzymując (w s):
# Wykonując odpowiedni test zweryfikuj na poziomie istotności 0,05 hipotezę, że czas
# likwidacji zrywu ma rozkład N(6, 3; (1, 5)2).
probka=c(4.5, 3.6, 6.0, 6.4, 7.9, 6.9, 6.1, 7.4, 9.0, 4.3, 6.1, 8.2, 4.9, 7.5, 5.8)
probka = (probka - 6.3) / 1.5
shapiro.test(probka)
# p-value = 0.9572 - nie ma podstaw do odrzucenia hipotezy zerowej