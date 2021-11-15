root_bisection <- function(f, a, b, e, N){
  iter <- 0
  fa <- f(a)
  fb <- f(b)
  
  while(abs(b-a) > e){
    iter <- iter + 1
    if(iter > N){
      warning("iteration reaches maximum")
      break
    }
    x <- (a+b)/2
    fx <- f(x)
    if(fa*fx > 0){
      a <- x
      fa <- fx
    } else {
      b <- x
      fb <- fx
    }
  }
  root <- (a+b)/2
  return(list("function"= f, iter = iter, root = root))
}

root_bisection(f = function(x){exp(-x)-x}, a = 0, b = 1, e = 10^(-7), N = 50)
root_bisection(f = function(x){exp(-2*x)-sin(x)}, a = 1, b = 10,  e = 10^(-7), N = 50)