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
