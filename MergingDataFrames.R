head(stats)
head(mydf)
#we have County - Country.Name & Code = Country.Code

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
merged$Country <- NULL
head(merged)








