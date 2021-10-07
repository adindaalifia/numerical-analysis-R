#simple calculation
1+1
4-2
1*2
4/2

#base
round(4.213)
signif(4.56789, digits=3)
ceiling(4.216)
floor(6.745)

#vector
x <- c(1,2,3,4)
fruit <- c("Apple", "Banana", "Cherry")
y <- c(T, F, T, F, F, T)

#numerical vector
z <- c(1:10)
w <- seq(1,15)

p <- seq(10,20,2)
m <- c(1,2,3)
repeat_m <- rep(m, 3)
repeat_mnew <- rep(m, each=2, times=3)
repeat_mnew2 <- rep(m, each=2, lenght.out=1)

#matrices
num_matrix <- seq(10,50, 5)
dim(num_matrix) <- c(3,3)
num_matrix

#transpose matrix
t(num_matrix)

matrix <- matrix(seq(1,20,2), nrow=5)
matrix <- matrix(seq(1,20,2), nrow=5, byrow=T)
matrix[3,1]

#factors
colour <- c(1,3,2,4,1,5)
fcolour <- factor(colour)
levels(fcolour) <- c("red", "yellow", "blue", "green", "brown")

#lists
colour_score <- c(15,20,25,30,35)
colours_and_score <- list(colour_code=colour, colours=fcolour, score=colour_score)
