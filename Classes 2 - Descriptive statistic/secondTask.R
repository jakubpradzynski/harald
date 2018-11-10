# Wczytanie danych Indometh
indometh <- Indometh
conc <- indometh$conc

# Jaka jest wielkość próbki?
length(conc)

# Z jakiego przedziału przyjmuje wartości analizowana zmienna?
range(conc)

# Skomentuj wzajemne położenie średniej i mediany.
mean(conc)
median(conc)
### Średnia jest wyższa, a więc więc wartości znajduje się po lewej stronie wartości przeciętnej 

# Zbadaj symetrię próbki.
install.packages("moments")
library(moments)
skewness(conc)
### rozkład prawostronnie skośny, 

# Jaka jest średnia obcięta z 50% środkowych obserwacji?
concLength <- length(conc)
conc
x <- c(conc[1:(concLength * 1/4)])
x2 <- c(conc[(concLength * 3/4):concLength+1])
result <- append(x, x2)
mean(result)

# Zbadaj koncentrację próbki.
kurtosis(conc)
### większa niż 3 a więc bardziej skoncentrowane

# Jaka jest długość przedziału, w którym znajduje się 50% środkowych obserwacji?
(concLength * 3/4) - (concLength * 1/4)

# Ile wynosi poziom stężenia indometacyny, poniżej którego znajduje się 30% obserwacji?
quantile(conc, probs = 0.30)

# Ile wynosi poziom stężenia indometacyny, powyżej którego znajduje się 20% obserwacji? 
quantile(conc, probs = 0.80)