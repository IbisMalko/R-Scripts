# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")

# Use filter to create a new data frame no_south
no_south <- filter(murders, region !="South")
# Use nrow() to calculate the number of rows
nrow(no_south)