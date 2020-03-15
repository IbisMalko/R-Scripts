# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <-filter(murders,region %in% c("Northeast","West"))
# Number of states (rows) in this category 
nrow(murders_nw)