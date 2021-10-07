#Pengenalan R

rep(c("A","B","C"),5)
rep(c(1,2,3,4),2)
rep(1:2,each=5)
rep(1:3,5)
rep(1:3,each=2,5)

#1. Bilangan bulat terdekat
round(x)
#2. Pembulatan ke desimal tertentu
signif(5.43212, digits = 3)
#3. Bilangan bulat terkecil yang tidak kurang dari bilangan tertentu
ceiling(x)
#4. Bilangan bulat terbesar yang tidak lebih dari
floor(x)

x <- seq(0,10, length=8)
y <- seq(1,5,2)
round(x)
floor(x)
