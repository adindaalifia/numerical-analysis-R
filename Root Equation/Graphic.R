root_graphic <- function(f, a, b, N){
  h <- abs((a+b)/N)
  x <- seq(from=a, to=b, length.out = N+1)
  fx <- rep(0, N+1)
  
  for(i in 1:(N+1)){
    fx[i] <- f(x[i])
  }
  
  data <- data.frame(x=x, fx=fx)
  return(data)
}

root_graphic(f = function(x){exp(-x)-x}, 1, 0, 10)
root_graphic(f = function(x){exp(-x)-x}, 0.6, 0.5, 10)