
#Method 1: Select the File Manually
stats <- read.csv(file.choose())
stats
#     Country.Name Country.Code Birth.rate Internet.users        Income.Group
# 1   Aruba          ABW     10.244       78.90000         High income
# 2   Afghanistan          AFG     35.253        5.90000          Low income
# 3   Angola          AGO     45.985       19.10000 Upper middle income
# 4   Albania          ALB     12.877       57.20000 Upper middle income
# 5   United Arab Emirates          ARE     11.044       88.00000         High income

#Method 2: Set WD and Read Data
getwd()
setwd("C:\\Users\\xyz\\OneDrive\\Documents")
stats2 <- read.csv("DemographicData.csv")












