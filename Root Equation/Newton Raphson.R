root_nr <- function(f, fp, x0, e, N){
  iter <- 0
  xold <- x0
  fx <- f(xold)
  fpx <- fp(xold)
  xnew <- xold - (fx/fpx)
  
  while(abs(xnew-xold) > e){
    iter <- iter + 1
    if(iter > N){
      warning("iteration reaches maximum")
      break
    }
    xold <- xnew
    fx <- f(xold)
    fpx <- fp(xold)
    xnew <- xold - (fx/fpx)
  }
  root <- xnew
  return(list("function" = f, root=root, iter=iter))
}
root_nr(f = function(x){exp(-x)-x}, fp = function(x){-exp(-x)-1}, 0, 10^-7, 50)
