#Fun Problem
f3 <- function(x){
  1/((pi)^(1/2)) * exp(-(x-2)^2)
}

trapRule(f3, 1.9, 2.1, 10000)

simpRule(f3, 1.9, 2.1, 10000)