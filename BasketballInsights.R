myPlot4 <-function(data, rows=1:10){
  Data<-data[rows, , drop=F]
  Data
  matplot(t(Data), type = "b", pch=15:18, col=c(1:4, 6))
  legend("bottomleft", inset=0.01, legend = Players[rows], col=c(1:4, 6), pch = 15:18, horiz = F)
}

myPlot4(Games)


#Salary
myPlot4(Salary)
myPlot4(Salary/Games)
myPlot4(Salary/FieldGoals)

#In-Game Metrics
myPlot4(MinutesPlayed)
myPlot4(Points)

#In-Games Metrics Normalized
myPlot4(FieldGoals/Games)
myPlot4(FieldGoals/FieldGoalAttempts)
myPlot4(FieldGoalAttempts/Games)
myPlot4(Points/Games)

#Interesting Observations
myPlot4(MinutesPlayed/Games)
myPlot4(Games)

#Time is valuable
myPlot4(FieldGoals/MinutesPlayed)

#Player Style
myPlot4(Points/FieldGoals)

