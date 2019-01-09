# Liczba ocen niedostatecznych uzyskanych na egzaminie z pewnego przedmiotu
# przez jednakowo liczne grupy studenckie I roku Wydziału Matematyki i Informatyki
# pewnego uniwersytetu były następujące
# Na poziomie istotności 0,05 testem χ2
# zweryfikować hipotezę, że prawdopodobieństwa występowania ocen niedostatecznych w tych grupach są jednakowe.
liczb_ocen_nds = c(14, 18, 28, 12, 4, 22, 14, 16, 10, 8, 18, 6, 12)
table(liczb_ocen_nds)
chisq.test(table(liczb_ocen_nds))
# p-value wychodzi 0.9962 > 0.05, a wiec nie mamy podstaw do odrzucenia hipotezy zerowej
