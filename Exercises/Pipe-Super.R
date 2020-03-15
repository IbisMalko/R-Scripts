# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")

# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate(rate = total/population*100000, rank= rank(-rate)) %>% filter(region %in% c("Northeast","West") & rate <1 ) %>% select(state,rate,rank)  
