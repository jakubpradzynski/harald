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