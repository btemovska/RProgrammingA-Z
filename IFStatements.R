#------2------1------0------1-----2------

rm(answer) #removes a variable
x <- rnorm(1) #rnorm function gives you random variables with mean 0
if(x > 1){
  answer <- "Greater than 1"
} else{
  answer <- "Less or equal 1"
}

#nested if statement
y <- rnorm(1)
if(y > 1){
  answer2 <- "Greater than 1"
} else {
  
  if(y >= -1) {
    answer2 <- "Between -1 and 1"
  } else {
    answer2 <- "Less than -1"
  }
}

#chaining statements
z<-rnorm(1)
if(z >1){
  answer3 <- "Greater then 1"
} else if (z >= -1) {
  answer3 <- "Between -1 and 1"
}else {
  answer3 <- "Less than 1"
}





