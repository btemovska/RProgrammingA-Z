#What are packages in R?
  #imagine bunch of different blenders bundled 
  #some packages are great for creating charts & graphs
  #others for processing large data sets
#it is collections of R functions

install.packages("ggplot2")
library(ggplot2)

?qplot()
qplot(data=diamonds, carat, price, colour=clarity, facets = .~clarity)







