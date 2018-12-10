# SasanNajar,
# Email: sasangnajar@gmail.com, Twitter:@SasanGN

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