#Example2
f2 <- function(x){
  1 / ((1 + x^4)^(1/2))
}

trapRule(f2, 0, 1, 10)

simpRule(f2, 0, 1, 4)

