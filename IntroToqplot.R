library(ggplot2)
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size = I(3))
qplot(data=stats, x=Income.Group, y=Birth.rate, size = I(3),
      colour = I("purple"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom = "boxplot")












