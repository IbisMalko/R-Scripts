# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")

# Use select to only show state names and abbreviations from murders
select(murders, state, abb)