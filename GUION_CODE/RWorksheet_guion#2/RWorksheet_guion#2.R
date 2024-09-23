1.
a. 
vec <- -5:5
print(vec)
# Output
# [1] -5 -4 -3 -2 -1  0  1  2  3  4  5
# The vector prints out values from -5 to 5 consecutively
b. 
x <- 1:7
print(x)  
#Output is [1] 1 2 3 4 5 6 7
2. 
a. 
vec2 <- seq(1,3, by=0.2)
print(vec2)  
# Output 
#[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
# The output shows values from 1 to 3, incremented by 0.2
3. 
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
          22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
          24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
          18)
a.
third <- ages[3]
print(third)
# The value is 22
b.
secondAndFourth <- ages[c(2,4)]
print(secondAndFourth)
# The values are 28 and 36 respectively 
c.
but <- ages[-c(4,12)]
print(but)
#Output
#[1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51
[29] 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18
4.
b.
x <-c("first"=3, "second"=0, "third"=9)
names(x)
a. 
#Result: [1] "first"  "second" "third" 
x[c("first", "third")]
# The output prints out a table which shows the strings: first and third on the first row and aligned with its corresponding values: 3 and 9 on the second row. 
5. 
b. 
x <- -3:2
a. 
x[2] <- 0
print(x)
#Output:[1] -3  0 -1  0  1  2
#The output shows a vector from -3 to 2 consecutively. However, after I modified the second element, it changed into 0 (previously -2).  
6. 
a.
cruz <- data.frame(
  Month = c("Price per liter(PhP)", "Purchase-quantity(Liters)"),
  Jan = c(format(52.50, nsmall = 2), 25),                   
  Feb = c(format(57.25, nsmall = 2), 30),
  March = c(format(60.00, nsmall = 2), 40),
  Apr = c(format(65.00, nsmall = 2), 50),
  May = c(format(74.25, nsmall = 2), 10),
  June = c(format(54.00, nsmall = 2), 45)
)
print(cruz)
#Output
#                     Month   Jan   Feb March   Apr   May  June
#      Price per liter(PhP) 52.50 57.25 60.00 65.00 74.25 54.00
# Purchase-quantity(Liters)    25    30    40    50    10    45  
b.
liter <- as.numeric(cruz[1, -1])  
purchase <- as.numeric(cruz[2, -1])
wm <- weighted.mean(liter, purchase)
print(wm)  
#Output
#59.2625
7. 
c.
a.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
b.
print(data)  
#Output
#141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000
# 3710.0000
