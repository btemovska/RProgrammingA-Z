#What is a vector?
#it is sequence of the data elements of the same basic type
#can't mix different data types in one vector

MyFirstVector <- c(3, 45, 56, 732)
is.numeric(MyFirstVector) #TRUE
is.integer(MyFirstVector) #FALSE, remember R runs on doubles
is.double(MyFirstVector) #TRUE

V2 <- c(3L, 12L, 234L, 0L)
is.numeric(V2) #TRUE
is.integer(V2) #TRUE

V3 <- c("a", "B23", "Hello")
is.character(V3) #TRUE

seq() #sequence - like ':'
rep() #replicate

seq(1, 15)
#1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
seq(1, 15, 2) #skip 2
#1  3  5  7  9 11 13 15


rep(3, 50)
#3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
rep("a", 5)
#"a" "a" "a" "a" "a"
x <- c(80,20)
y<-rep(x, 10)
y #80 20 80 20 80 20 80 20 80 20 80 20 80 20 80 20 80 20 80 20

