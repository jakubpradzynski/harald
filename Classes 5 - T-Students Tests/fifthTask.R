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