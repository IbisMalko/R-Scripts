# loading the dslabs package and the murders dataset
library(dslabs)
data(murders)

# If rather than an index we want a logical that tells us whether or not each element
# of a first vector is in a second, we can use the function %in%. 

#For example: Gives us two TRUE followed by a FALSE because 2 and 3 are in y but 5 is not.
x <- c(2, 3, 5)
y <- c(1, 2, 3, 4)
x%in%y

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA","ME","MI","MO","MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs%in%murders$abb