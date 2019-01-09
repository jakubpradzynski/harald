# Na pudełkach zapałek jest napisane „średnio 64 zapałki”. W pliku zapalki.txt
# znajdują się dane dotyczące ilości zapałek w 1000 wylosowanych pudełkach. 
# Na podstawie tych danych zweryfikuj na poziomie istotności α = 0, 05 hipotezę H0 : µ = 64
# wobec hipotezy alternatywnej H1 : µ > 64.

zapalki = read.table("zapalki.txt", header = TRUE, sep = " ")
x = unlist(zapalki, use.names = FALSE)
n = length(x)
T = sqrt(n) * (mean(x)-64)/sd(x)

t.test(x, mu=64, alternative="g")
# p-value < 2.2e-16 => odrzucamy hipoteze zerowa