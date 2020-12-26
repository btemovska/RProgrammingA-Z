#what is function in R?
    #imagine a blender that you fill with
    #fruits, and it preforms something (blend)
    #and it gives you smoothie 
rnorm()
?rnorm()
rnorm(5, mean = 10, sd = 8)
# 11.53839 17.76841 15.85809 12.48054 11.19636

c()
?seq()
rep()

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()

sqrt()
paste()


#playing with seq
seq(10, 20, 3)#10 13 16 19
seq(from = 10, to = 20, by = 3)#10 13 16 19
seq(from = 10, to = 20, length.out = 100) 
    #gives you 100 numbers

x <-c("a", "b", "c")
seq(from = 10, to = 20, along.with = x)
    #10 15 20

#playing with rep
rep(5:6, 8)#5 6 5 6 5 6 5 6 5 6 5 6 5 6 5 6
rep(5:6, times = 8) #same as above
rep(5:6, each = 8) 
          # 5 5 5 5 5 5 5 5 6 6 6 6 6 6 6 6





