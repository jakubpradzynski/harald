# Załaduj do R dane zawarte w pliku Ankieta.csv.
ankieta <- read.csv("Ankieta.csv", header = TRUE, sep = ";")
  # a. Narysuj wykres pudełkowy dla wieku w rozbiciu na płeć.
boxplot(ankieta$wiek~ankieta$plec)
  # b. Narysuj histogram dla ciśnienia skurczowego.
hist(ankieta$cisnienie.skurczowe, main="Histogram CS", col=rainbow(20))
  # c. Zmodyfikuj histogram tak, aby na osi pionowej zaznaczone były prawdopodobieństwa empiryczne.
hist(ankieta$cisnienie.skurczowe, main="Histogram CS", col=rainbow(20), probability = TRUE)
  # d. Odpowiedz na pytanie: czy w ankietowanej grupie było więcej kobiet, czy mężczyzn? rysując odpowiedni wykres.
plot(ankieta$plec, main="Histogram PLEC", col=rainbow(20)) # Więcej Kobiet
  # e. Wyznacz średnie ciśnienie skurczowe dla grup wyznaczonych przez płeć.
scs=aggregate(ankieta$cisnienie.skurczowe, by=list(ankieta$plec), FUN=mean)
  # f. Zobrazuj otrzymane wyniki na wykresie słupkowym.
barplot(height=scs$x, col=rainbow(20), main="Srednie cisnienie skurczowe", names.arg = scs$Group.1)
