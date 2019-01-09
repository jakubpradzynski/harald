# Producent płatków mydlanych wysunął hipotezę, że stopień wyprania tkaniny
# wełnianej płatkami mydlanymi jest wyższy od stopnia wyprania płynem do prania.
# W celu sprawdzenia tej hipotezy wykonano pomiary stopnia wyprania 10 wycinków
# tkaniny pranej płatkami, otrzymując w procentach wyniki 74, 4; 75, 1; 73, 0; 72, 8;
# 76, 2; 74, 6; 76, 0; 73, 4; 72, 9; 71, 6, oraz 7 wycinków pranych płynem do prania,
# otrzymując 56, 8; 57, 8; 54, 6; 59, 0; 57, 1; 58, 2; 57, 6. 
# Zakładając, że stopień wyprania tkaniny ma rozkład normalny i wiedząc, że test równości wariancji wykonany
# dla powyższych próbek nie pozwolił na odrzucenie hipotezy zerowej, na poziomie
# istotności α = 0,05 zweryfikuj hipotezę wysunietą przez producenta.

x1 = c(74.4, 75.1, 73.0, 72.8, 76.2, 74.6, 76.0, 73.4, 72.9, 71.6)
x2 = c(56.8, 57.8, 54.6, 59.0, 57.1, 58.2, 57.6)

t.test(x1, x2, alternative="g")
# p-value = 1 => nie mamy podstaw odrzucic hipotezy zerowej
