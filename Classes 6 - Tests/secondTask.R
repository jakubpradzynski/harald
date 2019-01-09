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