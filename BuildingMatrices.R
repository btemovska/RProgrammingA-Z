#Matrices (first number is the row, and the second is the column ex. A[3, 4])
#Matrices are two dimentions (they have rows and columns)
  #rbind() connects the rows
  #cbind() connects the columns

my.data <- 1:20
my.data

#EX: 1
A <- matrix(my.data, 4,  5, byrow = F)
A
#       [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9   13   17
# [2,]    2    6   10   14   18
# [3,]    3    7   11   15   19
# [4,]    4    8   12   16   20

A[2,3]


#EX: 2
B <- matrix(my.data, 4, 5, byrow = T)
B
#       [,1] [,2] [,3] [,4] [,5]
# [1,]    1    2    3    4    5
# [2,]    6    7    8    9   10
# [3,]   11   12   13   14   15
# [4,]   16   17   18   19   20
B[2, 5]


r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1, 2, 3)

#EX: 3
C <- rbind(r1, r2, r3)
C
#     [,1]   [,2] [,3]   
# r1 "I"    "am" "happy"
# r2 "What" "a"  "day"  
# r3 "1"    "2"  "3"  

#EX: 4
D <- cbind(r1, r2, r3)
D
#       r1      r2     r3 
# [1,] "I"     "What" "1"
# [2,] "am"    "a"    "2"
# [3,] "happy" "day"  "3"
