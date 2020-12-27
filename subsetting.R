x <-c("a", "b", "c", "d", "e")
x[c(1, 5)] #"a" "e"

Games
Games[1:3, 6:10] #first 1 to 3rd rows, and 6th through 10th column

#compare top player and the bottom player in the dataset
Games[c(1,10),] #1st row and 10th row only
Games[, c("2008", "2009")] #only 2008 and 2009

#only show the first row with the names
Games[1, ,drop=F]
#           2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
#KobeBryant   80   77   82   82   73   82   58   78    6   35


#----------- Viz

Data<-MinutesPlayed[1:3,]
Data
matplot(t(Data), type = "b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend = Players[1:3], col=c(1:4, 6), pch = 15:18, horiz = F)



Data<-MinutesPlayed[1, , drop=F]
Data
matplot(t(Data), type = "b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend = Players[1], col=c(1:4, 6), pch = 15:18, horiz = F)



