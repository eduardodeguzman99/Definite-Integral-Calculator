#Example1
f1 <- function(x){
  -(x^2) + 4*x
}

trapRule(f1, 0, 4, 10000)

simpRule(f1, 0, 4, 10000)

