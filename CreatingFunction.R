
#ex. 1 where we tell which players and update in two places
myPlot <-function(){
Data<-MinutesPlayed[2:3, , drop=F]
Data
matplot(t(Data), type = "b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend = Players[2:3], col=c(1:4, 6), pch = 15:18, horiz = F)
}

myPlot()

#ex. 2 were we tell the function all rows, but in line 20 we tell which players
myPlot2 <-function(rows){
  Data<-MinutesPlayed[rows, , drop=F]
  Data
  matplot(t(Data), type = "b", pch=15:18, col=c(1:4, 6))
  legend("bottomleft", inset=0.01, legend = Players[rows], col=c(1:4, 6), pch = 15:18, horiz = F)
}

myPlot2(1:5) #we only need to change this to show which players we want to see
            #aka this is a parameter



#ex. 3 were we make it flexible (change data + the rows we want to see)
myPlot3 <-function(data, rows){
  Data<-data[rows, , drop=F]
  Data
  matplot(t(Data), type = "b", pch=15:18, col=c(1:4, 6))
  legend("bottomleft", inset=0.01, legend = Players[rows], col=c(1:4, 6), pch = 15:18, horiz = F)
}

myPlot3(Salary, 1:5)
