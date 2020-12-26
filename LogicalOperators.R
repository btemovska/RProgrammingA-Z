#Logical (TRUE T  or FALSE F)

4<5 #TRUE
10 >100 #FALSE
4==5 #FALSE

# == equal to
# != not equal to
# < >  less then or greater
# <= less then or equal to  >= greater then or equal to
# ! not
# | or
# & and
# isTRUE(x)

result <- 4<5
result #TRUE
typeof(result) #logical

result2 <- !(5 > 1)
result2 #FALSE

result | result2  #either the first OR second needs to be true
#TRUE

result & result2 # both of these variables need to be true
#FALSE

isTRUE(result)
#TRUE
