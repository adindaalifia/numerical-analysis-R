root_grafis <- function(f, a, b, N){
  h <- abs((a+b)/N)
  x <- seq(from=a, to=b, length.out = N+1)
  fx <- rep(0, N+1)
  
  for(i in 1:(N+1)){
    fx[i] <- f(x[i])
  }
  
  data <- data.frame(x=x, fx=fx)
  return(data)
}

root_grafis(f = function(x){exp(-x)-x}, 1, 0, 10)
root_grafis(f = function(x){exp(-x)-x}, 0.6, 0.5, 10)

seq(1,5, length.out=10)

################################

root_bisection <- function(f, a, b, e, N){
  iter <- 0
  fa <- f(a)
  fb <- f(b)
  
  while(abs(b-a) > e){
    iter <- iter + 1
    if(iter > N){
      warning("iterasi mencapai maksimum")
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

###################################

root_rf <- function(f, a, b, e, N){
  iter <- 0
  fa <- f(a)
  fb <- f(b)
  c <- (f(b)*a - f(a)*b)/(f(b)-f(a))
  fc <- f(c)
  
  while(abs(fc) > e){
    iter <- iter + 1
    if(iter > N){
      warning("iterasi mencapai maksimum")
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

root_rf(f = function(x){exp(-x)-x}, a = 0, b = 1, e = 10^(-6), N = 50)

# f <- exp(-2*x- sin(x))
root_rf(f = functio(x){exp(-2*x)-sin(x)}, a = 0, b = 1, e = 10^(-6), N = 50)

root_grafis(f = function(x){exp(-2*x)-sin(x)}, 0, 1, 50)

root_bisection(f = function(x){exp(-2*x)-sin(x)}, a = 0, b = 1, e = 10^(-6), N = 60)


