#One of your colleagues from the Auditing dept. has aked you to help them assess the financial
  #statement of organization X
#You have been supplied with two vectors of data: monthly revenue and monthly expenses for the
  #financial year in question. Your task is to calculate the following financial metrics:
  #-profit for each month
  #-profit after tax for each month (the tax rate is 30%)
  #-profit margin for each month - equal to profit after tax divided by revenue
  #-good months-where the profit after tax was greater than the mean for the year
  #-bad months-where the profit after tax was less than the mean for the year
  #-the best month-where the profit after tax was max for the year
  #-the worst month-where the profit after tax was min for the year

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#---------profit for each month
profit <- revenue-expenses
profit
  #2522.67  1911.39 -3707.79 -2914.31  -599.92  7265.24  8210.55  3944.97  3328.39 -2238.65   659.60 11629.54


#---------profit after tax for each month (the tax rate is 30%)
tax <- profit * 0.3
tax #756.801   573.417 -1112.337  -874.293  -179.976  2179.572  2463.165  1183.491   998.517  -671.595   197.880  3488.862
tax <- round(profit * 0.3, digits = 2)
tax #756.80   573.42 -1112.34  -874.29  -179.98  2179.57  2463.17  1183.49   998.52  -671.60   197.88  3488.86

profit.after.tax <- profit - tax
profit.after.tax #1765.87  1337.97 -2595.45 -2040.02  -419.94  5085.67  5747.38  2761.48  2329.87 -1567.05   461.72  8140.68

#---------profit margin for each month - equal to profit after tax divided by revenue (aka what is the final profit)
profit.margin <- round(profit.after.tax/revenue, 2) * 100
profit.margin #12  18 -30 -22  -5  63  50  28  23 -11   4  53
    #in January, taxes ate 88 cents for ever dollar the business made

#---------good months-where the profit after tax was greater than the mean for the year
mean.profit.after.tax <- mean(profit.after.tax)
mean.profit.after.tax #1750.682*************************
good.months <- profit.after.tax > mean.profit.after.tax
good.months #TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE

#--------bad months-where the profit after tax was less than the mean for the year
bad.months <- !good.months
bad.months #FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE

#--------the best month-where the profit after tax was max for the year
best.month <-profit.after.tax == max(profit.after.tax)
best.month #FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
max(profit.after.tax) #8140.68

#--------the worst month-where the profit after tax was min for the year
worst.month<-profit.after.tax == min(profit.after.tax)
worst.month #FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
min(profit.after.tax) #-2595.45



#units of thousands
revenue.1000 <- round(revenue /1000, 0)
expenses.1000 <- round(expenses/1000)
profit.1000 <- round(profit/1000)
profit.after.tax.1000 <- round(profit.after.tax/1000)

#output
revenue.1000 #15  8  9  9  8  8 11 10 10 14 11 15
expenses.1000 #12  6 12 12  9  1  3  6  7 17 10  4
profit.1000 #3  2 -4 -3 -1  7  8  4  3 -2  1 12
profit.after.tax.1000 # 2  1 -3 -2  0  5  6  3  2 -2  0  8
profit.margin #12  18 -30 -22  -5  63  50  28  23 -11   4  53
good.months #TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
bad.months #FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE
best.month #FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
worst.month #FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

