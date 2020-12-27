#------------------------Exploring
stats
nrow(stats) #195 rows
ncol(stats) #5 columns
head(stats) #top 6 rows
head(stats, n=10) #top 10 rows
tail(stats) #bottom 6 rows

str(stats) #stats about the data, aka structure
summary(stats) #how many are in each income group
            #min, max, quartiles for the num values, etc



#------------------------Using $ sign
stats[3,]
#   Country.Name Country.Code Birth.rate Internet.users        Income.Group
# 3       Angola          AGO     45.985           19.1 Upper middle income

stats[3, "Birth.rate"] #45.985

stats$Internet.users
# [1] 78.90000  5.90000 19.10000 57.20000 88.00000 59.90000 41.90000 63.40000 83.00000 80.61880 58.70000
# [12]  1.30000 82.17020  4.90000  9.10000  6.63000 53.06150 90.00004 72.00000 57.79000 54.17000 33.60000
# [23] 95.30000 36.94000 51.04000 73.00000 64.50000 29.90000 15.00000  3.50000 85.80000 86.34000 66.50000
# [34] 45.80000  8.40000  6.40000  6.60000 51.70000  6.50000 37.50000 45.96000 27.93000 74.10000 65.45480

stats$Internet.users[2] #5.9

levels(stats$Income.Group) # "High income" "Low income" "Lower middle income" "Upper middle income"


