#------------Filtering Data Frames
head(stats)

filter<-stats$Internet.users < 2 #(TRUE/FALSE vector)
stats[filter,] #it will display the true values only
#    Country.Name Country.Code Birth.rate Internet.users        Income.Group
# 12       Burundi          BDI     44.151            1.3          Low income
# 53       Eritrea          ERI     34.800            0.9          Low income
# 56      Ethiopia          ETH     32.925            1.9          Low income
# 65        Guinea          GIN     37.337            1.6          Low income
# 118      Myanmar          MMR     18.119            1.6 Lower middle income


stats[stats$Birth.rate > 40,]
#        Country.Name Country.Code Birth.rate Internet.users        Income.Group
# 3             Angola          AGO     45.985           19.1 Upper middle income
# 12           Burundi          BDI     44.151            1.3          Low income


stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
#   Country.Name Country.Code Birth.rate Internet.users Income.Group
# 12       Burundi          BDI     44.151            1.3   Low income
# 128        Niger          NER     49.661            1.7   Low income
# 157      Somalia          SOM     43.891            1.5   Low income

stats[stats$Income.Group == "High income", ]  #all countries with high income

stats[stats$Country.Name == "Malta", ]

