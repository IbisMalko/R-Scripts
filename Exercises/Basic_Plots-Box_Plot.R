# adding a column with mutate
library(dslabs)
data("murders")

library(dplyr)

# Create a boxplot of state populations by region for the murders dataset
boxplot(murders$population~region, data = murders)