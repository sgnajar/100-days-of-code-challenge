# SasanNajar,
# Email: sasangnajar@gmail.com, Twitter:@SasanGN

# loading packages and installing missing items
install.packages('devtools', dependencies = T)
library(devtools)
install_version("colorspace","1.2-4")
library(ggplot2)

# Loading mtcars dataset
data(mtcars)

# Output all the variable
names(mtcars)

# Understanding the structure and main elements of data sets 
# this function prints out the first six rows of a data frame by default.
head(mtcars)

# Investigate the structure of mtcars data frame
str(mtcars)
dim(mtcars) #dimension

# Print out the data frame
mtcars

# Current row names in the data frame
row.names(mtcars)

# Changing the row names of the cars to numbers
row.names(mtcars) <- c(1:32)

# Now print out the data frame by running the code below.
mtcars

# It's tedious to relabel our data frame with the right car names
# print out the first ten rows.
data(mtcars)
head(mtcars, 10)

# Getting the average mpg for all of the cars in the mtcars data set 
mtcars$mpg
mean(mtcars$mpg)

## R markdown (check data-frame-markdown.rmd)

## PART2: read and subset data
# get the current directory
getwd()

# change directory
setwd('D:\\Documents\\GitHub\\100-days-of-code-challenge')

# read csv file
statesInfo <- read.csv('stateData.csv')

# northeast region is 1
View(statesInfo)
stateSubset <- subset(statesInfo, state.region==1)
# OR
stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]
head(stateSubsetBracket)
dim(stateSubsetBracket)

# read csv file2
reddit <- read.csv('reddit.csv')
table(reddit$employment.status)
summary(reddit)
str(reddit)
levels(reddit$age.range)
levels(reddit$income.range) #ordered-factor

ageFactor = factor(reddit$age.range)
incomeFactor = factor(reddit$income.range)
table(ageFactor)
table(incomeFactor)

# age.range graph without factoring
qplot(data=reddit, reddit$age.range)
# order the factor levels in the age.range variable, create a graph with a natural order
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65, Above"))
qplot(data = reddit, x = age.range)

# income.range graph without factoring
qplot(data = reddit, reddit$income.range)

# order the factor levels in the income.range variable, create a graph with a natural order
reddit$income.range <- ordered(reddit$income.range, levels = c("Under $20,000", "20,000 - $29,999", "$30,000 - $39,999", "$40,000 - $49,999", "$50,000 - $69,999", "$70,000 - $99,999", "$100,000 - $149,999", "$150,000 or more"))
qplot(data = reddit, x = reddit$income.range)


