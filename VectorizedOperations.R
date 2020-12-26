x <-rnorm(5)
x #1.3190735 -0.8274203 -1.3431174 -0.4473953  0.8072644

#R - specific programming loop
for (i in x) {
  print(i)
}
# [1] 1.319074
# [1] -0.8274203
# [1] -1.343117
# [1] -0.4473953
# [1] 0.8072644

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop
for(j in 1:5){
  print(x[j])
}
# [1] 1.319074
# [1] -0.8274203
# [1] -1.343117
# [1] -0.4473953
# [1] 0.8072644


#---------------second part---------------
N<-100
a<-rnorm(N)
b<-rnorm(N)


#Vecotorized approach =>when in doubt use this
c<-a*b

#De-vectoized approach
d<-rep(NA, N)
for(i in 1:N){
  d[i] <-a[i] * b[i]
}













