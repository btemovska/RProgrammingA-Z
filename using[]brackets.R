x<-c(1, 23, 543, 13, 4)   #combine function
#1  23 543  13   4
y<-seq(201, 250, 11)      #sequence 
#201 212 223 234 245
z<-rep("Hi", 3)           #replicate
#"Hi" "Hi" "Hi"

#how to access particular indexation
w <- c("a", "b", "c", "d", "e")
w[1] #"a"
w[3] #"c"
w[-1] #"b" "c" "d" "e" #this is all elements not 1st
w[-3] #"a" "b" "d" "e"
w[1:3] #give me 1st through 3rd element #"a" "b" "c"
w[c(1, 3, 5)] #"a" "c" "e"
w[c(-2, -4)] #"a" "c" "e"
w[-3:-5] # "a" "b"
w[1:2] #"a" "b"

w[0]
