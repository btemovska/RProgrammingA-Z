#load the data
data <- read.csv(file.choose())
head(data)

#turn year from integer into factor:
data$Year
temp <- factor(data$Year)
levels(temp) #"1960" "2013"

#split/filter the data frame as we have two years
data1960 <- data[data$Year == 1960,]
data2013 <- data[data$Year == 2013,]

#create the additional dataframe from the vectors
add1960 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_1960)
add2013 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_2013)

#merge the 4 new dataframes
merged1960 <- merge(data1960, add1960, by.x="Country.Code", by.y="Code")
merged2013 <- merge(data2013, add2013, by.x="Country.Code", by.y="Code")

#remove the year column
merged1960$Year <- NULL
merged2013$Year <- NULL

#Viz
library(ggplot2)
qplot(data=merged1960, x=Fertility.Rate, y=Life.Exp, colour=Region, size=I(4), alpha=I(0.6), 
        main="Life Expectancy vs Fertility (1960)")
qplot(data=merged2013, x=Fertility.Rate, y=Life.Exp, colour=Region, size=I(4), alpha=I(0.6), 
      main="Life Expectancy vs Fertility (2013)")

