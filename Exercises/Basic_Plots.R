# adding a column with mutate
library(dslabs)
data("murders")

library(dplyr)

# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
murders <- mutate(murders, rate = murders$total/murders$population*100000)
hist(murders$rate)

# boxplots of murder rates by region
boxplot(rate~region, data = murders)
