# Funkcja na k-ty moment centralny wektora
moment_centralny <- function(x, k) {
  result <- 0;
  n <- length(x);
  mean <- mean(x);
  for (i in 1:n) {
    print(x[i]);
    result <- result + ((x[i] - mean)^k);
  }
  result <- result * (1/n);
  return(result);
}

print(moment_centralny(c(11, 2, 3, 4, 25), 3));
