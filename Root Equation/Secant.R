root_secant <- function(f, x0, x1, e, N){
  iter <- 0
  xold <- x0
  x1 <- x1
  fx <- f(xold)
  fx1 <- f(x1)
  xnew <- x1 - ((fx1*(xold-x1))/(fx-fx1))
  
  while(abs(xnew-x1) > e){
    iter <- iter + 1
    if(iter > N){
      warning("iteration reaches maximum")
      break
    }
    xold <- x1
    x1 <- xnew
    fx <- f(xold)
    fx1 <- f(x1)
    xnew <- x1 - ((fx1*(xold-x1))/(fx-fx1))
  }
  root <- xnew
  return(list("function" = f, root=root, iter=iter))
}
root_secant(f = function(x){exp(-x)-x}, 1, 1.000001, 10^-7, 50)