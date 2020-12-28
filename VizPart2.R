qplot(data=merged, x=Internet.users, y=Birth.rate, 
      size=I(4), colour=Region)
#1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, 
      size=I(4), colour=Region, shape=I(15)) #15 is squares
#2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, 
      size=I(4), colour=Region, shape=I(19), alpha=I(0.5)) #19 is circles, alpha is between 0-1
#3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate, 
      size=I(4), colour=Region, shape=I(19), alpha=I(0.5), main = "Birth Rate vs Internet Users")






