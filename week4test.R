library(dslabs)
data(heights)

v <- ifelse(heights$sex == "Female", 1, 2)
sum(v)


h <- ifelse(heights$height > 72, heights$height, 0)
mean(h)

inches_to_ft <- function(x){
  y <- x/12
  y
}
inches_to_ft(144)

 a<-ifelse(inches_to_ft(heights$height) <5, TRUE, FALSE)
 
 sum(a)
 
# define a vector of length m
m <- 10
f_n <- vector(length = m)
 
# make a vector of factorials
 _________{
   f_n[n] <- factorial(n)
 }
 
 # inspect f_n
 f_n