
##1
# assigning values to variables
a <-2
b <--1
c <--4

# solving the quadratic equation
(-b + sqrt(b^2 - 4*a*c))/(2*a)
(-b - sqrt(b^2 - 4*a*c))/(2*a)


##2
##Use R to compute log base 4 of 1024. You can use the help() function 
##to learn how to use arguments to change the base of the log() function.
log(1024,4)

##3
library(dslabs)
data(movielens)
str(movielens)
class(movielens$title)
class(movielens$genres)
nlevels(movielens$genres)
