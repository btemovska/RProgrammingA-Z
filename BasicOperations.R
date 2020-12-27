#--------------Basic Operations with Data Frame
stats[1:10, ] #top 10 rows of the data

#multiply columns
stats$Birth.rate*stats$Internet.users

#add column
stats$MyCalc <- stats$Birth.rate*stats$Internet.users
stats$xyz <- 1:5

#remove column
stats$MyCalc <- NULL
stats$xyz <- NULL

head(stats)
