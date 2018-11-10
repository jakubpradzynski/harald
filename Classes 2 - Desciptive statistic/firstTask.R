# Wczytanie danych do zmiennej lakeHuron
lakeHuron <- LakeHuron
lakeHuronLength <- length(LakeHuron)

# Szereg przedziełowy o równych długosciach przedziałów
breaks <- sort(seq(max(lakeHuron), min(lakeHuron)))
factor <- cut(lakeHuron, breaks)
distribution <- table(factor)
distribution

# Szereg przedziałowy 5 klas o (w przybliżeniu) równych liczebnościach
breaks2 = sort(quantile(lakeHuron, names = FALSE, probs = seq(0, 1, by = 0.20), include.lowest = TRUE))
factor2 <- cut(lakeHuron, breaks2)
distribution2 <- table(factor2)
distribution2

# Przedział w jakim znajduje się dominanta
modaBreak <- names(sort(distribution, decreasing = TRUE))[1]
modaBreak
