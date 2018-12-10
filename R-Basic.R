# SasanNajar 
# Email: sasangnajar@gmail.com, Twitter:@SasanGN


#install and load the ggplot package
install.packages('ggplot')
library(ggplot2)

#install and load a color package
install.packages('RColorBrewer')
library(RColorBrewer)

#load the diamonds data set
data(diamonds)

#get a few first rows of the diamonds data set
head(diamonds)

#create scatterplot of price vs. carat color coded by diamonds cuts
qplot(data=diamonds, diamonds$carat, diamonds$price,  
      color=cut, xlab = "carat", ylab = "price", 
      main="Scatter plot of price vs. carat")+
      scale_color_brewer(palette = 'Accent')

ggplot(diamonds$cut)
type(diamonds)