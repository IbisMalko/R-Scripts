library(dslabs)
data(heights)
library(dplyr)
options(digits = 3)    # report 3 significant digits for all answers 


##1
# First, determine the average height in this dataset. 
# Then create a logical vector ind with the indices for those individuals who are above average height.
H_avg <- mean(heights$height)
ind <- heights$height > H_avg 
str(heights$height[ind])


##2
# How many individuals in the dataset are above average height and are female? 
H_avg <- mean(heights$height)
ind <- heights$height > H_avg 
str(heights)
filter(heights, height > H_avg ) %>% filter(sex == "Female")


##3
# What proportion of individuals in the dataset are female?
str(heights)
nrow(filter(heights, sex == "Female"))/ nrow(heights)


##4a
# Determine the minimum height in the heights dataset.
heights[which.min(heights$height),]

##4b
# Use the match() function to determine the index of the individual with the minimum height.
match(50,heights$height)

##4c
# Subset the sex column of the dataset by the index in 4b to determine the individual’s sex.
heights[1032,]

##4a
# Determine the maximum height.
heights[which.min(heights$height),]


##5a
#Determine the maximum height.
heights[which.max(heights$height),]

##5b
#Which integer values are between the maximum and minimum heights? 
#For example, if the minimum height is 10.2 and the maximum height is 20.8, 
#your answer should be x <- 11:20 to capture the integers in between those values. 
#(If either the maximum or minimum height are integers, include those values too.)
x <- 50:82

##5c
#How many of the integers in x are NOT heights in the dataset?
sum(!(50:82)  %in% heights$height)

##6
#Using the heights dataset, create a new column of heights in centimeters named ht_cm. 
#Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.
heights2 <- mutate(heights,ht_cm = height*(2.54))

##6a
#What is the height in centimeters of the 18th individual (index 18)?
heights2[18,]

##6b
#What is the mean height in centimeters?
mean(heights2$ht_cm)

##7
#Create a data frame females by filtering the heights2 data to contain only female individuals.
females <- filter(heights2,sex == "Female")

##7a
#How many females are in the heights2 dataset?
nrow(females)

##7b
#What is the mean height of the females in centimeters?
mean(females$ht_cm)

##8
#The olive dataset in dslabs contains composition in percentage of eight fatty acids found 
#in the lipid fraction of 572 Italian olive oils:

library(dslabs)
data(olive)
head(olive)

#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. 
#What relationship do you see?

plot(olive$palmitic, olive$palmitoleic)

#-- ANS: There is a positive linear relationship between palmitic and palmitoleic. 

##9
#Create a histogram of the percentage of eicosenoic acid in olive.

hist(olive$eicosenoic)

#-- ANS: The most common value of eicosenoic acid is below 0.05%. 

##10
#Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
boxplot(palmitic~region, data = olive)

#Which region has the highest median palmitic acid percentage?

#-- ANS: Southern Italy

#Which region has the most variable palmitic acid percentage?

#-- ANS: Southern Italy


