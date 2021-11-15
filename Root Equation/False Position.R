root_fp <- function(f, a, b, e, N){
  iter <- 0
  fa <- f(a)
  fb <- f(b)
  c <- (f(b)*a - f(a)*b)/(f(b)-f(a))
  fc <- f(c)
  
  while(abs(fc) > e){
    iter <- iter + 1
    if(iter > N){
      warning("iteration reaches maximum")
      break
    }
    c <- (a+b)/2
    fc <- f(c)
    
    if(fa*fc > 0){
      a <- c
      fa <- fc
    } else {
      b <- c
      fb <- fc
    }
    c <- (f(b)*a - f(a)*b)/(f(b)-f(a))
    fc <- f(c)
    print(c)
  }
  root <- c
  return(list("function"= f, root = root, iter = iter))
}

root_fp(f = function(x){exp(-x)-x}, a = 0, b = 1, e = 10^(-6), N = 50)