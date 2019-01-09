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
