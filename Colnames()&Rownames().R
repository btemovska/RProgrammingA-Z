#Named Vectors
Charlie <- 1:5
Charlie #1 2 3 4 5

#give names
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie #a b c d e 
        #1 2 3 4 5
Charlie["d"] #4
names(Charlie) #"a" "b" "c" "d" "e"

#clear names aka remove names
names(Charlie) <- NULL
Charlie #1 2 3 4 5


#------------

#Naming Matrix Dimensions 1
temp.vec <- rep(c("a", "B", "zZ"), each = 3)
temp.vec #"a"  "a"  "a"  "B"  "B"  "B"  "zZ" "zZ" "zZ"

Bravo <- matrix(temp.vec, 3, 3)
Bravo
#     [,1] [,2] [,3]
#[1,] "a"  "B"  "zZ"
#[2,] "a"  "B"  "zZ"
#[3,] "a"  "B"  "zZ"

rownames(Bravo) <- c("How", "are", "you?")
colnames(Bravo) <- c("X", "Y", "Z")
Bravo         
#       X   Y   Z   
# How  "a" "B" "zZ"
# are  "a" "B" "zZ"
# you? "a" "B" "zZ"


Bravo[2, 2] #B
Bravo["are", "Y"] #B


#Edit matrix value
Bravo["are", "Y"] <- 0
Bravo
#       X   Y   Z   
# How  "a" "B" "zZ"
# are  "a" "0" "zZ"
# you? "a" "B" "zZ"
