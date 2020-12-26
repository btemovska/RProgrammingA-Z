#Test the Law Of Large Numbers for N random normally distributed numbers with mean=0, stdev=1
#Create R script that will count how many of these numbers fall between -1 and 1 and devide by
  #the total qty of N
#You know that E(X) = 68.2%
#Check that Mean(Xn) -> E(X) as you retun your script while increasing N

N<-10000                    #specify the sample size
counter <- 0                #set counter to begin at 0
for(i in rnorm(N)){         #iterate over vector of numbers
  if(i > -1 & i < 1){       #check where iterated variable falls
    counter <- counter + 1  #increase counter if condition is met
  }
}

#compare to: 68.2% (or 0.682)
answer <- counter / N       #calculate hit-ratio
answer                      #print answer in console

