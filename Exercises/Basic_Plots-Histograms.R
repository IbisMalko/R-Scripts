# adding a column with mutate
library(dslabs)
data("murders")

library(dplyr)

# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)
