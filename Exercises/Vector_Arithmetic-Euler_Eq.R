# What is the sum of the following equation: 1 + 1/2^2 + 1/3^2 + ... + 1/100^2? 
# Thanks to Euler we know it should be close to π2/6. 
------------------------------------------
# Define an object `x` with the numbers 1 through 100
x<-(1:100)
# Compute the sum 
sum(1/x^2)